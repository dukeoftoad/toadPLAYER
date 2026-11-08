#!/usr/bin/env python3
"""Subset toadPLAYER's bundled variable fonts to a Latin-centric coverage set.

The app UI is English-only (the Hindi UI locale was dropped). The two bundled
variable fonts (Inter Variable, Google Sans Flex) previously carried wider
worldwide-script coverage. Any glyph the subset lacks still renders on Android
through the system font fallback chain, so no user-visible text can turn into
tofu.

Reproducible usage (from repo root):
    pip install fonttools
    python tool/subset_fonts.py            # rewrites assets/fonts/*.ttf in place

Only runs when fonts change; the subset output is committed to the repo.
Originals: Inter from rsms.me/inter, Google Sans Flex from fonts.google.com.
"""
from __future__ import annotations

import subprocess
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parent.parent
FONTS = REPO / "assets" / "fonts"

# Latin-centric coverage: ASCII, Latin-1, Latin Extended A/B + IPA,
# combining diacritics, Latin Extended Additional, general punctuation,
# superscripts/subscripts, currency, letterlike symbols, arrows, math bits.
UNICODES = ",".join(
    [
        "U+0020-007E",  # Basic Latin
        "U+00A0-00FF",  # Latin-1 Supplement
        "U+0100-017F",  # Latin Extended-A
        "U+0180-024F",  # Latin Extended-B
        "U+0250-02AF",  # IPA Extensions
        "U+0300-036F",  # Combining Diacritical Marks
        "U+1E00-1EFF",  # Latin Extended Additional
        "U+2000-206F",  # General Punctuation (dashes, quotes, ellipsis, bullet)
        "U+2070-209F",  # Superscripts and Subscripts
        "U+20A0-20CF",  # Currency Symbols
        "U+2100-214F",  # Letterlike Symbols (TM, Ohm, ...)
        "U+2190-2199",  # Arrows
        "U+2212",       # Minus sign
        "U+2260",       # Not equal
        "U+2264-2265",  # Less/greater or equal
    ]
)

PYFTSUBSET_FLAGS = [
    f"--unicodes={UNICODES}",
    # Keep every OpenType layout feature (kern, liga, calt, mark, mkmk, ...)
    "--layout-features=*",
    # Keep the full name table so family/style matching is untouched.
    "--name-IDs=*",
    "--name-legacy",
    # Variable fonts: fvar/avar/gvar are retained automatically; STAT and
    # named instances survive so weight/width/optical axes keep working.
    "--prune-unicode-ranges",
]

# Sample text whose glyph coverage MUST be present after subsetting.
REQUIRED_CHARS = (
    "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
    " .,!?;:'\"()[]{}-_–—…•·‘’“”/\\|&@#%*+=<>~^$€£¥₹°±×÷"
)


def subset(src: Path, dst: Path) -> None:
    before = src.stat().st_size
    cmd = ["pyftsubset", str(src), f"--output-file={dst}", *PYFTSUBSET_FLAGS]
    subprocess.run(cmd, check=True, capture_output=True, text=True)
    after = dst.stat().st_size
    print(f"{src.name}: {before:,} -> {after:,} bytes ({before - after:,} saved)")


def verify(path: Path) -> None:
    from fontTools.ttLib import TTFont

    font = TTFont(str(path))
    cmap = font.getBestCmap()
    missing = [c for c in set(REQUIRED_CHARS) if ord(c) not in cmap]
    if missing:
        raise SystemExit(f"FATAL {path.name}: missing glyphs: {missing!r}")
    axes = []
    if "fvar" in font:
        axes = [(a.axisTag, a.minValue, a.defaultValue, a.maxValue) for a in font["fvar"].axes]
    print(f"  verified {path.name}: {len(cmap)} mapped chars, axes={axes}")


def main() -> None:
    targets = sorted(FONTS.glob("*.ttf"))
    if len(sys.argv) > 1:
        targets = [Path(a) for a in sys.argv[1:]]
    for ttf in targets:
        out = ttf.with_suffix(".subset.ttf")
        subset(ttf, out)
    # Swap in place only after all subsets succeeded and verified.
    for ttf in targets:
        out = ttf.with_suffix(".subset.ttf")
        verify(out)
        out.replace(ttf)
        print(f"  replaced {ttf.name} in place")


if __name__ == "__main__":
    main()
