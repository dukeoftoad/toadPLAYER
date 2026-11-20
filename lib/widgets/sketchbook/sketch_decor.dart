// Shared SketchDecor: the chokepoints that dress the app in hand-drawn ink
// when a paper theme (Sketchbook or Toadmark) is on, ported from the
// toadHEALTH look (MIT, © 2025 dukeoftoad).
//
// AppIcon rings its filled glyphs, AppContentCard draws a wobbly border and
// AppActionButton takes the squash-when-pressed paper treatment — every
// chokepoint reads the SketchThemeMark from the theme, so the whole app
// switches pens with the style and sheets or dialogs inherit it for free.
import 'package:flutter/material.dart';
import 'package:toadplayer/theme/sketchbook/sketchy.dart';
import 'package:toadplayer/widgets/sketchbook/sketch_components.dart';
import 'package:toadplayer/widgets/sketchbook/toad_mascot.dart';

/// The ink badge: a wobbly hand-drawn ring around a filled glyph, the paper
/// world's answer to Material's filled chips.
///
/// Roomy surroundings get the proper ring with breathing room; a tight box
/// keeps the glyph's footprint and the ring hugs its edge instead, so dense
/// rows never overflow.
class SketchInkBadge extends StatelessWidget {
  const SketchInkBadge({
    super.key,
    required this.child,
    this.color,
    this.seed = 3.0,
  });

  final Widget child;

  /// The ink colour; defaults to the scheme's on-surface.
  final Color? color;

  /// Deterministic wobble seed, so the ring never flickers between frames.
  final double seed;

  @override
  Widget build(BuildContext context) {
    final ink =
        color ?? Theme.of(context).colorScheme.onSurface.withValues(
              alpha: 0.55,
            );
    return LayoutBuilder(
      builder: (context, constraints) {
        final roomy = !constraints.hasBoundedHeight ||
            !constraints.hasBoundedWidth ||
            constraints.maxWidth >= 40 && constraints.maxHeight >= 40;
        if (roomy) {
          return CustomPaint(
            painter: _InkBadgePainter(ink: ink, seed: seed, inset: 7),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: child,
            ),
          );
        }
        return CustomPaint(
          foregroundPainter: _InkBadgePainter(ink: ink, seed: seed, inset: 1),
          child: child,
        );
      },
    );
  }
}

class _InkBadgePainter extends CustomPainter {
  final Color ink;
  final double seed;
  final double inset;

  const _InkBadgePainter({
    required this.ink,
    required this.seed,
    required this.inset,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final radius = (size.shortestSide / 2) - inset;
    if (radius < 3) return;
    final ring = sketchEllipse(
      Offset(size.width / 2, size.height / 2),
      size.width / 2 - inset,
      size.height / 2 - inset,
      seed: seed,
      amp: 0.9,
    );
    drawSketchStroke(canvas, ring, color: ink, width: 1.6, ghost: false);
  }

  @override
  bool shouldRepaint(covariant _InkBadgePainter oldDelegate) =>
      oldDelegate.ink != ink || oldDelegate.seed != seed;
}

/// A quiet toad mark: the mascot as a still stamp for watermarks, headers
/// and empty corners. No tickers, one painter pass, ignores pointers.
class ToadMark extends StatelessWidget {
  const ToadMark({
    super.key,
    this.size = 64,
    this.opacity = 1,
    this.pose = ToadPose.idle,
    this.phase = 0.35,
  });

  final double size;
  final double opacity;
  final ToadPose pose;

  /// A fixed gait position, so the stamp is identical every frame.
  final double phase;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Opacity(
        opacity: opacity,
        child: SizedBox.square(
          dimension: size,
          child: CustomPaint(
            painter: ToadPainter(
              pose: pose,
              phase: phase,
              palette: ToadPalette.of(Theme.of(context).brightness),
            ),
          ),
        ),
      ),
    );
  }
}

/// The toad-hosted empty state: the family toad, a hand-drawn speech bubble
/// and a squiggle — paper themes swap the app's bare icon placeholders for
/// the host himself. Title copy and actions stay with the caller.
class SketchEmptyState extends StatelessWidget {
  const SketchEmptyState({
    super.key,
    required this.message,
    this.mascotSize = 92,
    this.pose = ToadPose.idle,
  });

  /// The speech bubble's message, already localized by the caller.
  final String message;

  final double mascotSize;
  final ToadPose pose;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox.square(
          dimension: mascotSize,
          child: CustomPaint(
            painter: ToadPainter(
              pose: pose,
              phase: 0.35,
              palette: ToadPalette.of(Theme.of(context).brightness),
            ),
          ),
        ),
        const SizedBox(height: 10),
        SketchSpeechBubble(text: message),
        const SizedBox(height: 8),
        const SketchSquiggle(),
      ],
    );
  }
}

/// The paper world's action button: a sheet of paper with a wobbly ink
/// border that squashes when pressed. Prominent actions fill with the
/// scheme's primary (error when destructive), tonal ones with the container.
class SketchActionButton extends StatefulWidget {
  const SketchActionButton({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.label,
    this.tonal = false,
    this.outlined = false,
    this.isDestructive = false,
    this.fontSize = 17,
    this.seed = 2.4,
  });

  final VoidCallback? onPressed;
  final Widget icon;
  final Widget label;
  final bool tonal;
  final bool outlined;
  final bool isDestructive;
  final double fontSize;

  /// Deterministic wobble seed for the border.
  final double seed;

  @override
  State<SketchActionButton> createState() => _SketchActionButtonState();
}

class _SketchActionButtonState extends State<SketchActionButton> {
  bool _down = false;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final enabled = widget.onPressed != null;
    final prominent = widget.isDestructive || !widget.outlined;
    final fill = !enabled
        ? scheme.surfaceContainerHighest.withValues(alpha: 0.5)
        : widget.isDestructive
        ? scheme.error
        : prominent
        ? scheme.primary
        : widget.tonal
        ? scheme.secondaryContainer
        : scheme.surfaceContainerLow;
    final foreground = !enabled
        ? scheme.onSurfaceVariant.withValues(alpha: 0.5)
        : widget.isDestructive
        ? scheme.onError
        : prominent
        ? scheme.onPrimary
        : scheme.onSurface;
    final border = prominent || widget.isDestructive
        ? foreground.withValues(alpha: 0.8)
        : scheme.onSurface.withValues(alpha: 0.75);
    return GestureDetector(
      onTap: widget.onPressed,
      onTapDown: enabled ? (_) => setState(() => _down = true) : null,
      onTapUp: enabled ? (_) => setState(() => _down = false) : null,
      onTapCancel: enabled ? () => setState(() => _down = false) : null,
      child: AnimatedScale(
        scale: _down ? 0.95 : 1.0,
        duration: const Duration(milliseconds: 130),
        curve: Curves.easeOut,
        child: Container(
          decoration: BoxDecoration(
            color: fill,
            borderRadius: BorderRadius.circular(18),
            boxShadow: const [
              BoxShadow(
                color: Color(0x142B2B20),
                blurRadius: 10,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Stack(
            children: [
              Positioned.fill(
                child: IgnorePointer(
                  child: CustomPaint(
                    painter: SketchBorderPainter(
                      color: border,
                      seed: widget.seed,
                      radius: 18,
                      amp: 1.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                child: DefaultTextStyle(
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: foreground,
                    fontSize: widget.fontSize,
                  ),
                  child: IconTheme.merge(
                    data: IconThemeData(color: foreground, size: 20),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (widget.icon case Icon(:final glyph?))
                          Icon(glyph, size: 20)
                        else
                          widget.icon,
                        const SizedBox(width: 8),
                        widget.label,
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
