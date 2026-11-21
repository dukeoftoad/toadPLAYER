import 'package:flutter/material.dart';
import 'package:toadplayer/theme/app_theme.dart';

/// The Sketchbook theme: toadHEALTH's hand-drawn ink-on-paper look, ported
/// into Toadplayer as a fourth style.
///
/// Cream paper surfaces, swamp-green primary, pond-teal and coral accents;
/// Caveat draws the display and headline roles, PatrickHand carries body
/// copy. Like the Toad style it never follows the wallpaper, so the
/// personality is identical on every device - only here the personality is
/// a sheet of paper doodled by the family toad.
///
/// The style keeps its own hand-written fonts on purpose: honouring the
/// custom-font or system-font pick would erase exactly what makes the
/// theme itself.
abstract final class SketchbookTheme {
  // Light: warm cream paper and swamp greens.
  static const _cream = Color(0xFFF6F1E0);
  static const _ink = Color(0xFF2B2B20);
  static const _inkSoft = Color(0xFF7A7561);
  static const _toadDeep = Color(0xFF3B6B2B);
  static const _toadLight = Color(0xFFBFDC85);
  static const _pondDeep = Color(0xFF4E93A3);
  static const _coral = Color(0xFFE2694E);
  static const _moss = Color(0xFF31402B);

  // Dark: the night pond.
  static const _nightSurface = Color(0xFF12140E);
  static const _nightOnSurface = Color(0xFFE7E3D0);
  static const _nightPrimary = Color(0xFFA5C77E);
  static const _nightInkSoft = Color(0xFFA9A48C);

  /// Caveat's handwriting carries the big sketchy roles.
  static const String headingFont = 'Caveat';

  /// Body font of the paper world.
  static const String bodyFont = 'PatrickHand';

  static ThemeData build(Brightness brightness) {
    final light = brightness == Brightness.light;
    final scheme = (light
            ? ColorScheme.fromSeed(
                seedColor: const Color(0xFF5F9C3F),
                brightness: Brightness.light,
              )
            : ColorScheme.fromSeed(
                seedColor: const Color(0xFF5F8A46),
                brightness: Brightness.dark,
              ))
        .copyWith(
          primary: light ? _toadDeep : _nightPrimary,
          onPrimary: light ? _cream : const Color(0xFF1F2A16),
          primaryContainer: light ? _toadLight : _moss,
          onPrimaryContainer: light ? _moss : _toadLight,
          secondary: light ? _pondDeep : const Color(0xFF8FB9C4),
          onSecondary: light ? _cream : const Color(0xFF16323A),
          secondaryContainer: light
              ? const Color(0xFFD5E9ED)
              : const Color(0xFF2C4A52),
          onSecondaryContainer: light
              ? const Color(0xFF24444C)
              : const Color(0xFFD5E9ED),
          tertiary: light ? _coral : const Color(0xFFE89A85),
          onTertiary: light ? _cream : const Color(0xFF3A160D),
          tertiaryContainer: light
              ? const Color(0xFFF7D2C7)
              : const Color(0xFF5A2C20),
          onTertiaryContainer: light
              ? const Color(0xFF5A2317)
              : const Color(0xFFF7D2C7),
          surface: light ? _cream : _nightSurface,
          onSurface: light ? _ink : _nightOnSurface,
          onSurfaceVariant: light ? _inkSoft : _nightInkSoft,
          outlineVariant: light
              ? const Color(0xFFD9D2BC)
              : const Color(0xFF3A4032),
          surfaceContainerLowest: light
              ? const Color(0xFFFEFAEC)
              : const Color(0xFF0D0F0B),
          surfaceContainerLow: light
              ? const Color(0xFFF9F3E1)
              : const Color(0xFF141611),
          surfaceContainer: light
              ? const Color(0xFFF3ECDB)
              : const Color(0xFF1A1D16),
          surfaceContainerHigh: light
              ? const Color(0xFFECE4D0)
              : const Color(0xFF20241C),
          surfaceContainerHighest: light
              ? const Color(0xFFE4DBC4)
              : const Color(0xFF262B22),
          inverseSurface: light ? _ink : _nightOnSurface,
          onInverseSurface: light ? _cream : _nightSurface,
        );

    final base = light
        ? AppTheme.light(dynamicScheme: scheme, fontFamily: bodyFont)
        : AppTheme.dark(dynamicScheme: scheme, fontFamily: bodyFont);

    // The hand-written swap: Caveat signs every display and headline role
    // (its script weight needs a little extra size to hold its own), the
    // body keeps PatrickHand through the base font family.
    TextStyle heading(TextStyle? style, double bump) {
      final size = style?.fontSize ?? 24.0;
      return (style ?? const TextStyle()).copyWith(
        fontFamily: headingFont,
        fontWeight: FontWeight.w700,
        fontSize: size + bump,
        height: 1.05,
      );
    }

    final textTheme = base.textTheme.copyWith(
      displayLarge: heading(base.textTheme.displayLarge, 5),
      displayMedium: heading(base.textTheme.displayMedium, 5),
      displaySmall: heading(base.textTheme.displaySmall, 4),
      headlineLarge: heading(base.textTheme.headlineLarge, 4),
      headlineMedium: heading(base.textTheme.headlineMedium, 3),
      headlineSmall: heading(base.textTheme.headlineSmall, 2),
    );

    return base.copyWith(
      textTheme: textTheme,
      primaryTextTheme: textTheme,
      appBarTheme: base.appBarTheme.copyWith(
        // The AppBar title is the one heading every screen sees.
        titleTextStyle: TextStyle(
          fontFamily: headingFont,
          fontSize: 26,
          fontWeight: FontWeight.w700,
          color: scheme.onSurface,
        ),
      ),
    );
  }
}
