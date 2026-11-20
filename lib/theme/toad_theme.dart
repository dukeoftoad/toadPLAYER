import 'package:flutter/material.dart';
import 'package:toadplayer/theme/app_theme.dart';

/// The crafted Toad theme: a fixed, swamp-inspired palette built around the
/// toad's mossy green with warm earth accents. Unlike the Material style it
/// never follows the wallpaper, so the personality is identical on every
/// device, and unlike the Toadplayer style it stays a plain Material look.
class ToadTheme {
  ToadTheme._();

  /// The toad's back in daylight: a deep moss green.
  static const Color lightSeed = Color(0xFF557B2F);

  /// The same moss lifted for dark surfaces, where saturated greens sink.
  static const Color darkSeed = Color(0xFF9CCC65);

  /// Warm swamp-paper surface instead of Material's neutral grey.
  static const Color lightSurface = Color(0xFFF9FAF1);

  /// Deep pond surface for dark mode, a hair greener than pure black-grey.
  static const Color darkSurface = Color(0xFF12140E);

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
          surface: light ? lightSurface : darkSurface,
          // An earthy toad-skin brown as the secondary harmony instead of
          // the seed-derived twin green, so chips and fills read warm.
          secondary: light ? const Color(0xFF56624A) : const Color(0xFFBDC2AE),
          tertiary: light ? const Color(0xFF38656A) : const Color(0xFFA2CFD4),
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
