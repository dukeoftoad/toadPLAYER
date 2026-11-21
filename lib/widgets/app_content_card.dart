import 'package:flutter/material.dart';
import 'package:material_3_expressive/material_3_expressive.dart';
import 'package:toadplayer/theme/material_expressive.dart';
import 'package:toadplayer/theme/sketch_theme_mark.dart';
import 'package:toadplayer/theme/toadplayer_theme.dart';
import 'package:toadplayer/widgets/sketchbook/sketch_components.dart';

/// One inline surface, matching the metadata groups and dialog controls.
class AppContentCard extends StatelessWidget {
  const AppContentCard({
    super.key,
    required this.child,
    this.color,
    this.shape,
    this.elevation,
    this.clipBehavior = Clip.none,
    this.preserveColor = false,
    this.margin,
    this.onTap,
    this.onLongPress,
    this.toadplayerSurface = true,
  });

  final Widget child;
  final Color? color;
  final ShapeBorder? shape;
  final double? elevation;
  final Clip clipBehavior;
  final bool preserveColor;

  /// Outer margin; Material defaults to its card theme, Toadplayer to zero.
  final EdgeInsetsGeometry? margin;

  /// Makes the whole card pressable, with the expressive press feedback.
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;

  /// False keeps a plain [Card] under Toadplayer for surfaces that carry their
  /// own tinted color (errors, notices) rather than the Toadplayer control fill.
  final bool toadplayerSurface;

  @override
  Widget build(BuildContext context) {
    // A paper theme draws every card as a sheet of paper with a wobbly ink
    // border, keeping the caller's own tint when one was given.
    if (context.isSketchPaper) {
      final scheme = Theme.of(context).colorScheme;
      final interactive = onTap != null || onLongPress != null;
      final content = Material(
        color: color ?? scheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(16),
        clipBehavior: Clip.antiAlias,
        child: interactive
            ? InkWell(onTap: onTap, onLongPress: onLongPress, child: child)
            : child,
      );
      return Padding(
        padding:
            margin ?? CardTheme.of(context).margin ?? const EdgeInsets.all(4),
        child: CustomPaint(
          foregroundPainter: SketchBorderPainter(
            color: scheme.onSurface.withValues(alpha: 0.7),
            seed: 2.8,
            radius: 16,
            amp: 1.1,
          ),
          child: content,
        ),
      );
    }
    if (!context.isToadplayer || !toadplayerSurface) {
      if (!context.isToadplayer &&
          materialExpressiveEnabled(context) &&
          (shape == null || shape is RoundedRectangleBorder)) {
        final radius = shape is RoundedRectangleBorder
            ? (shape as RoundedRectangleBorder).borderRadius.resolve(
                Directionality.of(context),
              )
            : BorderRadius.circular(20);
        return Padding(
          padding:
              margin ?? CardTheme.of(context).margin ?? const EdgeInsets.all(4),
          child: MaterialExpressiveScope(
            child: M3ECard(
              variant: M3ECardVariant.filled,
              padding: EdgeInsets.zero,
              color: color,
              elevation: elevation ?? 0,
              // BorderSide.none would still paint as a hairline.
              border:
                  shape is RoundedRectangleBorder &&
                      (shape as RoundedRectangleBorder).side.style !=
                          BorderStyle.none
                  ? (shape as RoundedRectangleBorder).side
                  : null,
              borderRadius: radius,
              clipBehavior: onTap == null && onLongPress == null
                  ? clipBehavior
                  : Clip.antiAlias,
              onPressed: onTap,
              onLongPress: onLongPress,
              child: Material(color: Colors.transparent, child: child),
            ),
          ),
        );
      }
      final interactive = onTap != null || onLongPress != null;
      return Card(
        color: color,
        shape: shape,
        elevation: elevation,
        margin: margin,
        clipBehavior: interactive ? Clip.antiAlias : clipBehavior,
        child: interactive
            ? InkWell(onTap: onTap, onLongPress: onLongPress, child: child)
            : child,
      );
    }
    final content = DividerTheme(
      data: DividerTheme.of(
        context,
      ).copyWith(color: ToadplayerTheme.metadataDividerColor(context)),
      child: child,
    );
    final surface = Material(
      color: preserveColor ? color : ToadplayerTheme.controlFill(context),
      borderRadius: BorderRadius.circular(28),
      clipBehavior: Clip.antiAlias,
      child: onTap != null || onLongPress != null
          ? InkWell(onTap: onTap, onLongPress: onLongPress, child: content)
          : content,
    );
    return margin == null ? surface : Padding(padding: margin!, child: surface);
  }
}
