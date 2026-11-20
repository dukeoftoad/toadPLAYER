// Sketchbook paper components, ported from toadHEALTH (MIT, © 2025 dukeoftoad).
//
// A paper card with a wobbly ink border, a pressable button that squashes
// when tapped, a hand-drawn speech bubble and a squiggle underline - the
// shared kit the Sketchbook theme builds its moments from.
import 'package:flutter/material.dart';
import 'package:toadplayer/theme/sketchbook/sketchy.dart';

/// The toadHEALTH paper palette: swamp greens, warm cream paper, pond teals.
///
/// The Sketchbook theme maps these onto the Material color scheme, but the
/// ink strokes themselves always draw with the true palette colours.
abstract final class SketchPalette {
  static const cream = Color(0xFFF6F1E0);
  static const paper = Color(0xFFFEFAEC);
  static const ink = Color(0xFF2B2B20);
  static const inkSoft = Color(0xFF7A7561);
  static const toad = Color(0xFF5F9C3F);
  static const toadDeep = Color(0xFF3B6B2B);
  static const toadLight = Color(0xFFBFDC85);
  static const lilypad = Color(0xFF9CC46A);
  static const coral = Color(0xFFE2694E);
  static const sun = Color(0xFFEFB03F);
  static const pond = Color(0xFF6FB7C4);
  static const pondDeep = Color(0xFF4E93A3);
  static const moss = Color(0xFF31402B);
}

/// A paper card with a wobbly hand-drawn ink border.
class SketchCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry padding;
  final Color background;
  final Color borderColor;
  final double seed;
  final double wobble;
  final double rotation;
  final double radius;

  const SketchCard({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(16),
    this.background = SketchPalette.paper,
    this.borderColor = SketchPalette.ink,
    this.seed = 1.0,
    this.wobble = 1.2,
    this.rotation = 0,
    this.radius = 18,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: rotation,
      child: Container(
        decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(radius),
          boxShadow: const [
            BoxShadow(
              color: Color(0x162B2B20),
              blurRadius: 16,
              offset: Offset(0, 6),
            ),
          ],
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: IgnorePointer(
                child: CustomPaint(
                  painter: SketchBorderPainter(
                    color: borderColor,
                    seed: seed,
                    radius: radius,
                    amp: wobble,
                  ),
                ),
              ),
            ),
            Padding(padding: padding, child: child),
          ],
        ),
      ),
    );
  }
}

/// The wobbly ink border itself.
class SketchBorderPainter extends CustomPainter {
  final Color color;
  final double seed;
  final double radius;
  final double amp;

  const SketchBorderPainter({
    required this.color,
    required this.seed,
    this.radius = 18,
    this.amp = 1.2,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;
    final path = sketchRoundRect(
      rect.deflate(1.2),
      radius: radius,
      seed: seed,
      amp: amp,
    );
    drawSketchStroke(
      canvas,
      path,
      color: color,
      width: 1.8,
      opacity: 0.9,
      ghost: false,
    );
  }

  @override
  bool shouldRepaint(covariant SketchBorderPainter oldDelegate) {
    return oldDelegate.color != color ||
        oldDelegate.seed != seed ||
        oldDelegate.radius != radius ||
        oldDelegate.amp != amp;
  }
}

/// A pressable sketchy button that squashes when tapped.
class SketchButton extends StatefulWidget {
  final Widget child;
  final VoidCallback? onTap;
  final Color background;
  final Color borderColor;
  final EdgeInsetsGeometry padding;
  final double radius;
  final double seed;

  const SketchButton({
    super.key,
    required this.child,
    this.onTap,
    this.background = SketchPalette.paper,
    this.borderColor = SketchPalette.ink,
    this.padding = const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
    this.radius = 18,
    this.seed = 1.0,
  });

  @override
  State<SketchButton> createState() => _SketchButtonState();
}

class _SketchButtonState extends State<SketchButton> {
  bool _down = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      onTapDown: (_) => setState(() => _down = true),
      onTapUp: (_) => setState(() => _down = false),
      onTapCancel: () => setState(() => _down = false),
      child: AnimatedScale(
        scale: _down ? 0.93 : 1.0,
        duration: const Duration(milliseconds: 130),
        curve: Curves.easeOut,
        child: Container(
          decoration: BoxDecoration(
            color: widget.background,
            borderRadius: BorderRadius.circular(widget.radius),
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
                      color: widget.borderColor,
                      seed: widget.seed,
                      radius: widget.radius,
                      amp: 1.0,
                    ),
                  ),
                ),
              ),
              Padding(padding: widget.padding, child: widget.child),
            ],
          ),
        ),
      ),
    );
  }
}

/// A hand-drawn speech bubble with a little tail.
class SketchSpeechBubble extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  final TextStyle? textStyle;

  const SketchSpeechBubble({
    super.key,
    required this.text,
    this.color = SketchPalette.paper,
    this.textColor = SketchPalette.ink,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    // The bubble is a pasted paper note: its fill stays cream and its text
    // stays ink in both brightnesses. A passed [textStyle] may adjust the
    // face and size, but the ink colour is deliberately kept.
    final style = const TextStyle(
      fontFamily: 'PatrickHand',
      fontSize: 15,
      height: 1.3,
    ).merge(textStyle).copyWith(color: textColor);
    return CustomPaint(
      painter: _SketchBubblePainter(color: color),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 20),
        child: Text(text, style: style, textAlign: TextAlign.center),
      ),
    );
  }
}

class _SketchBubblePainter extends CustomPainter {
  final Color color;

  _SketchBubblePainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    // The bubble fills the top of the box; the bottom strip holds the tail.
    final bubbleRect = Rect.fromLTWH(0, 0, size.width, size.height - 9);
    final bubble = sketchRoundRect(
      bubbleRect.deflate(1.5),
      radius: 16,
      seed: 6.1,
      amp: 1.3,
    );
    canvas.drawPath(bubble, sketchFillPaint(color));
    drawSketchStroke(
      canvas,
      bubble,
      color: SketchPalette.ink,
      width: 1.8,
      opacity: 0.85,
      ghost: false,
    );

    // The tail hangs off the bubble's bottom edge, tip pointing down.
    final tail = sketchThrough(
      [
        Offset(size.width * 0.26, bubbleRect.bottom - 2),
        Offset(size.width * 0.21, size.height - 1.5),
        Offset(size.width * 0.26 + 14, bubbleRect.bottom - 2),
      ],
      seed: 9.4,
      amp: 0.4,
    );
    canvas.drawPath(tail, sketchFillPaint(color));
    drawSketchStroke(
      canvas,
      tail,
      color: SketchPalette.ink,
      width: 1.8,
      opacity: 0.85,
      ghost: false,
    );
  }

  @override
  bool shouldRepaint(covariant _SketchBubblePainter oldDelegate) {
    return oldDelegate.color != color;
  }
}

/// A hand-drawn underline squiggle.
class SketchSquiggle extends StatelessWidget {
  final Color color;
  final double width;
  final double height;

  const SketchSquiggle({
    super.key,
    this.color = SketchPalette.toad,
    this.width = 96,
    this.height = 8,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: CustomPaint(painter: _SquigglePainter(color: color)),
    );
  }
}

class _SquigglePainter extends CustomPainter {
  final Color color;

  _SquigglePainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final path = sketchThrough(
      [
        Offset(2, size.height * 0.55),
        Offset(size.width * 0.25, size.height * 0.30),
        Offset(size.width * 0.5, size.height * 0.62),
        Offset(size.width * 0.75, size.height * 0.34),
        Offset(size.width - 2, size.height * 0.55),
      ],
      seed: 4.2,
      amp: 0.7,
    );
    drawSketchStroke(
      canvas,
      path,
      color: color,
      width: 2.4,
      opacity: 0.85,
      ghost: false,
    );
  }

  @override
  bool shouldRepaint(covariant _SquigglePainter oldDelegate) {
    return oldDelegate.color != color;
  }
}
