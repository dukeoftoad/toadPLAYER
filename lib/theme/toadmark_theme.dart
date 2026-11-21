import 'package:flutter/material.dart';
import 'package:toadplayer/theme/app_theme.dart';
import 'package:toadplayer/theme/sketch_theme_mark.dart';
import 'package:toadplayer/theme/sketchbook_theme.dart';

/// The Toadmark family theme: warm paper in light mode and deep ink in dark
/// mode, with frog-lime, emerald and pond-teal accents — drawn in the same
/// hand-written pen as the Sketchbook style, so the Toadmark brand reads as
/// ink on paper rather than a plain Material skin.
///
/// Like the Sketchbook style it keeps its hand-written fonts on purpose:
/// honouring the custom-font or system-font pick would erase exactly what
/// makes the theme itself. And like the Toad style it never follows the
/// wallpaper, so the personality is identical on every device.
class ToadmarkTheme {
  ToadmarkTheme._();

  /// Toadmark's moss-green daylight accent.
  static const Color lightSeed = Color(0xFF446E17);

  /// Frog-lime brand accent for dark surfaces.
  static const Color darkSeed = Color(0xFF84CC16);

  /// Warm paper used in the health app's daylight theme.
  static const Color lightSurface = Color(0xFFFEFAEC);

  /// Shared deep-ink family background.
  static const Color darkSurface = Color(0xFF0B100F);

  static ThemeData build(Brightness brightness) {
    final light = brightness == Brightness.light;
    final scheme = (light
            ? ColorScheme.fromSeed(
                seedColor: lightSeed,
                brightness: Brightness.light,
              )
            : ColorScheme.fromSeed(
                seedColor: darkSeed,
                brightness: Brightness.dark,
              ))
        .copyWith(
          primary: light ? const Color(0xFF446E17) : const Color(0xFFA3E635),
          onPrimary: light ? Colors.white : const Color(0xFF14210A),
          primaryContainer: light ? const Color(0xFFD3EFB4) : const Color(0xFF2E5312),
          onPrimaryContainer: light ? const Color(0xFF102000) : const Color(0xFFD9F99D),
          secondary: light ? const Color(0xFF0F766E) : const Color(0xFF34D399),
          onSecondary: light ? Colors.white : const Color(0xFF062A20),
          secondaryContainer: light ? const Color(0xFFC9F2E7) : const Color(0xFF18362A),
          onSecondaryContainer: light ? const Color(0xFF003B35) : const Color(0xFFD1FAE5),
          tertiary: light ? const Color(0xFF8F5C00) : const Color(0xFF2DD4BF),
          onTertiary: light ? Colors.white : const Color(0xFF003B35),
          background: light ? const Color(0xFFF6F1E0) : const Color(0xFF0B100F),
          onBackground: light ? const Color(0xFF2B2B20) : const Color(0xFFF3F4F6),
          surface: light ? lightSurface : const Color(0xFF131A18),
          onSurface: light ? const Color(0xFF2B2B20) : const Color(0xFFF3F4F6),
          surfaceVariant: light ? const Color(0xFFE9E2C0) : const Color(0xFF1A2320),
          onSurfaceVariant: light ? const Color(0xFF615E4F) : const Color(0xFFB8C7C0),
          surfaceContainerLowest: light ? Colors.white : const Color(0xFF070B0A),
          surfaceContainerLow: light ? const Color(0xFFFBF5E5) : const Color(0xFF0F1614),
          surfaceContainer: light ? const Color(0xFFF6F1E0) : const Color(0xFF131A18),
          surfaceContainerHigh: light ? const Color(0xFFECE5CC) : const Color(0xFF1A2320),
          surfaceContainerHighest: light ? const Color(0xFFE3DCC2) : const Color(0xFF212D29),
          outline: light ? const Color(0xFFA9A38B) : const Color(0xFF53645B),
          outlineVariant: light ? const Color(0xFFD8D1B8) : const Color(0xFF334139),
        );
    // The body keeps PatrickHand through the base font family, exactly the
    // Sketchbook swap: the shared handwriting is the point of the theme.
    final base = light
        ? AppTheme.light(
            dynamicScheme: scheme,
            fontFamily: SketchbookTheme.bodyFont,
          )
        : AppTheme.dark(
            dynamicScheme: scheme,
            fontFamily: SketchbookTheme.bodyFont,
          );

    // Caveat signs every display and headline role, with the same sizing
    // bumps the Sketchbook style gives the script weight.
    TextStyle heading(TextStyle? style, double bump) {
      final size = style?.fontSize ?? 24.0;
      return (style ?? const TextStyle()).copyWith(
        fontFamily: SketchbookTheme.headingFont,
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
      // Publishing the mark turns the app-wide ink decor on with the style.
      extensions: [
        for (final extension in base.extensions.values) extension,
        const SketchThemeMark(toadmark: true),
      ],
      textTheme: textTheme,
      primaryTextTheme: textTheme,
      appBarTheme: base.appBarTheme.copyWith(
        titleTextStyle: TextStyle(
          fontFamily: SketchbookTheme.headingFont,
          fontSize: 26,
          fontWeight: FontWeight.w700,
          color: scheme.onSurface,
        ),
      ),
    );
  }
}
