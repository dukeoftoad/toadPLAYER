import 'package:flutter/material.dart';
import 'package:toadplayer/theme/material_symbols.dart';
import 'package:toadplayer/theme/sketch_theme_mark.dart';
import 'package:toadplayer/theme/toadplayer_icons.dart';
import 'package:toadplayer/theme/toadplayer_theme.dart';
import 'package:toadplayer/widgets/sketchbook/sketch_decor.dart';

/// [widget] as an [AppIcon] when it is a plain [Icon], so shared components
/// can adopt Material Symbols without changing every caller.
Widget symbolIconWidget(Widget widget) {
  if (widget case Icon(:final icon?)) {
    return AppIcon(
      icon,
      key: widget.key,
      size: widget.size,
      color: widget.color,
      fill: widget.fill,
      semanticLabel: widget.semanticLabel,
      shadows: widget.shadows,
      textDirection: widget.textDirection,
    );
  }
  return widget;
}

/// [Icon] that draws the Material theme with rounded Material Symbols.
///
/// Toadplayer keeps [icon] unchanged, or its Cupertino counterpart with
/// [AppIcon.adaptive]. Icons without a symbol fall back to [icon].
class AppIcon extends StatelessWidget {
  const AppIcon(
    this.icon, {
    super.key,
    this.size,
    this.color,
    this.fill,
    this.semanticLabel,
    this.shadows,
    this.textDirection,
  }) : _adaptive = false;

  /// Uses [toadplayerIconFor] when the Toadplayer theme is on.
  const AppIcon.adaptive(
    this.icon, {
    super.key,
    this.size,
    this.color,
    this.fill,
    this.semanticLabel,
    this.shadows,
    this.textDirection,
  }) : _adaptive = true;

  final IconData? icon;
  final double? size;
  final Color? color;

  /// Overrides the symbol fill; null keeps the legacy glyph's filled state.
  final double? fill;
  final String? semanticLabel;
  final List<Shadow>? shadows;
  final TextDirection? textDirection;
  final bool _adaptive;

  @override
  Widget build(BuildContext context) {
    final icon = this.icon;
    if (context.isToadplayer) {
      return Icon(
        _adaptive && icon != null ? toadplayerIconFor(icon) : icon,
        size: size,
        color: color,
        semanticLabel: semanticLabel,
        shadows: shadows,
        textDirection: textDirection,
      );
    }
    final symbol = materialSymbolFor(icon);
    if (symbol == null) {
      final plain = Icon(
        icon,
        size: size,
        color: color,
        semanticLabel: semanticLabel,
        shadows: shadows,
        textDirection: textDirection,
      );
      // A paper theme rings explicitly filled glyphs in hand-drawn ink.
      return context.isSketchPaper && fill == 1
          ? SketchInkBadge(
              color: color?.withValues(alpha: 0.55),
              child: plain,
            )
          : plain;
    }
    final resolvedSize = size ?? IconTheme.of(context).size ?? 24;
    final resolvedFill = fill ?? (symbol.filled ? 1 : 0);
    final glyph = Icon(
      symbol.icon,
      size: size,
      color: color,
      fill: resolvedFill,
      // Material Symbols adjust stroke detail for the drawn size.
      opticalSize: resolvedSize.clamp(20, 48).toDouble(),
      semanticLabel: semanticLabel,
      shadows: shadows,
      textDirection: textDirection,
    );
    // Filled symbols read as selected or prominent, so a paper theme gives
    // each one its hand-drawn ink badge — the toadHEALTH lilypad ring.
    return context.isSketchPaper && resolvedFill == 1
        ? SketchInkBadge(
            color: color?.withValues(alpha: 0.55),
            child: glyph,
          )
        : glyph;
  }
}
