import 'package:flutter/material.dart';
import 'package:toadplayer/theme/app_theme.dart';

/// The Toadmark family theme: warm paper in light mode and deep ink in dark mode,
/// with frog-lime, emerald and pond-teal accents. Unlike the Material style it
/// never follows the wallpaper, so the personality is identical on every
/// device, and unlike the Toadplayer style it stays a plain Material look.
class ToadTheme {
  ToadTheme._();

  /// Toadmark's moss-green daylight accent.
  static const Color lightSeed = Color(0xFF446E17);

  /// Frog-lime brand accent for dark surfaces.
  static const Color darkSeed = Color(0xFF84CC16);

  /// Warm paper used in the health app's daylight theme.
  static const Color lightSurface = Color(0xFFFEFAEC);

  /// Shared deep-ink family background.
  static const Color darkSurface = Color(0xFF0B100F);

  static ThemeData build(
    Brightness brightness, {
    bool useSystemFont = false,
    String? fontFamily,
  }) {
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
    return light
        ? AppTheme.light(
            dynamicScheme: scheme,
            useSystemFont: useSystemFont,
            fontFamily: fontFamily,
          )
        : AppTheme.dark(
            dynamicScheme: scheme,
            useSystemFont: useSystemFont,
            fontFamily: fontFamily,
          );
  }
}
