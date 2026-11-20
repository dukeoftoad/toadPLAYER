import 'package:flutter/material.dart';

/// Marks a theme as paper: the hand-drawn Sketchbook world, or its Toadmark
/// sibling with the frog-lime brand accents.
///
/// Both paper theme builders publish this extension, so any context —
/// sheets, dialogs, overlays, desktop panels — can ask for the ink treatment
/// with a plain [Theme.of] lookup instead of a provider watch.
@immutable
class SketchThemeMark extends ThemeExtension<SketchThemeMark> {
  const SketchThemeMark({this.toadmark = false});

  /// True on the Toadmark variant: the same pen, brand frog-lime accents.
  final bool toadmark;

  @override
  SketchThemeMark copyWith({bool? toadmark}) =>
      SketchThemeMark(toadmark: toadmark ?? this.toadmark);

  @override
  SketchThemeMark lerp(SketchThemeMark? other, double t) =>
      t < 0.5 ? this : other ?? this;

  @override
  bool operator ==(Object other) =>
      other is SketchThemeMark && other.toadmark == toadmark;

  @override
  int get hashCode => Object.hash(SketchThemeMark, toadmark);
}

extension SketchThemeMarkContext on BuildContext {
  /// A paper theme is on: the hand-drawn ink decor applies app-wide.
  bool get isSketchPaper =>
      Theme.of(this).extension<SketchThemeMark>() != null;

  /// The Toadmark paper variant specifically.
  bool get isToadmarkPaper =>
      Theme.of(this).extension<SketchThemeMark>()?.toadmark == true;
}
