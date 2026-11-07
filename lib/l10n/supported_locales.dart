// Hand-maintained list of locales offered in the UI.
// Only English and Hindi are currently shipped; edit this list by hand if a
// new locale is ever added back.

import 'dart:ui' show PlatformDispatcher;

import 'package:flutter/widgets.dart';
import 'package:toadplayer/l10n/app_localizations.dart';

/// List of locales that meet the translation threshold.
/// Only these languages will be available in the app.
const List<Locale> filteredSupportedLocales = <Locale>[
  Locale('en'),
  Locale('hi'),
];

/// Set of locale codes for quick lookup.
const Set<String> filteredLocaleCodes = <String>{
  'en',
  'hi',
};

/// The locale the language setting names, or null to follow the device.
Locale? localeFromSetting(String setting) {
  if (setting == 'system' || setting.isEmpty) return null;
  final parts = setting.split('_');
  return parts.length == 2 ? Locale(parts[0], parts[1]) : Locale(parts[0]);
}

Locale _fallbackLocale(Iterable<Locale> supportedLocales) {
  for (final supportedLocale in supportedLocales) {
    if (supportedLocale.languageCode == 'en') {
      return supportedLocale;
    }
  }
  return supportedLocales.first;
}

/// The supported locale closest to [requestedLocale]: the same language and
/// region, then the same language, then English.
Locale resolveSupportedLocale(
  Locale? requestedLocale,
  Iterable<Locale> supportedLocales,
) {
  if (requestedLocale == null) {
    return _fallbackLocale(supportedLocales);
  }

  for (final supportedLocale in supportedLocales) {
    if (supportedLocale.languageCode == requestedLocale.languageCode &&
        supportedLocale.countryCode == requestedLocale.countryCode) {
      return supportedLocale;
    }
  }

  for (final supportedLocale in supportedLocales) {
    if (supportedLocale.languageCode == requestedLocale.languageCode) {
      return supportedLocale;
    }
  }

  return _fallbackLocale(supportedLocales);
}

/// The app's strings outside the widget tree, such as for the media browser
/// a car opens while the app is closed, in the language [setting] names.
AppLocalizations appLocalizationsFor(String setting) => lookupAppLocalizations(
  resolveSupportedLocale(
    localeFromSetting(setting) ?? PlatformDispatcher.instance.locale,
    filteredSupportedLocales,
  ),
);
