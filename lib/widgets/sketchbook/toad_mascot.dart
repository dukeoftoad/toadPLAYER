// The hand-drawn toad mascot, ported from toadHEALTH (MIT, © 2025 dukeoftoad).
//
// A CustomPainter that draws the family toad entirely with wobbly ink
// strokes: body, belly, haunches, feet, eye bumps, rosy cheeks and back
// spots. Poses drive the animation - idle bobs, walk and run cycle their
// legs, sleep droops, cheer throws both arms up.
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:toadplayer/theme/sketchbook/sketchy.dart';

/// Poses the toad mascot can strike across the app.
enum ToadPose { idle, walk, run, sleep, cheer }

/// Colour options for the toad (day pond vs night pond).
@immutable
class ToadPalette {
  final Color ink;
  final Color body;
  final Color belly;
  final Color cheek;
  final Color spot;

  const ToadPalette({
    this.ink = const Color(0xFF2B2B20),
    this.body = const Color(0xFF7BAE52),
    this.belly = const Color(0xFFE9E2C0),
    this.cheek = const Color(0xFFE2694E),
    this.spot = const Color(0xFF4C7A33),
  });

  static const classic = ToadPalette();

  static const night = ToadPalette(
    body: Color(0xFF5F8A46),
    belly: Color(0xFFDCD6B4),
  );

  /// The palette matching the ambient brightness.
  static ToadPalette of(Brightness brightness) =>
      brightness == Brightness.dark ? night : classic;

  @override
  bool operator ==(Object other) =>
      other is ToadPalette &&
      other.ink == ink &&
      other.body == body &&
      other.belly == belly &&
      other.cheek == cheek &&
      other.spot == spot;

  @override
  int get hashCode => Object.hash(ink, body, belly, cheek, spot);
}

/// The hand-drawn toad mascot, painted entirely with wobbly ink strokes.
///
/// The design space is a 100x100 box; [phase] (0..1, may exceed 1) drives
/// the gait and the body bob.
class ToadPainter extends CustomPainter {
  final ToadPose pose;
  final double phase;
  final ToadPalette palette;
  final double stroke;

  double _bob = 0;

  ToadPainter({
    required this.pose,
    this.phase = 0,
    this.palette = ToadPalette.classic,
    this.stroke = 2.1,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final s = math.min(size.width, size.height) / 100.0;
    canvas.save();
    canvas.translate(
      (size.width - 100 * s) / 2,
      (size.height - 100 * s) / 2,
    );
    canvas.scale(s, s);
    _paint(canvas);
    canvas.restore();
  }

  void _paint(Canvas canvas) {
    final ph = phase % 1.0;
    final ink = palette.ink;
    final bodyC = palette.body;
    final moving = pose == ToadPose.walk || pose == ToadPose.run;
    final bobAmp = pose == ToadPose.run
        ? 2.4
        : pose == ToadPose.cheer
        ? 2.0
        : moving
        ? 1.4
        : 0.8;
    _bob = math.sin(ph * 2 * math.pi) * bobAmp;
    const groundY = 86.0;

    // Motion speed lines behind a running toad.
    if (pose == ToadPose.run) {
      for (var i = 0; i < 3; i++) {
        final y = 40.0 + i * 10.0 + sketchWobble(i * 7.3, ph * 4, 1.0);
        drawSketchStroke(
          canvas,
          sketchLine(
            Offset(4.0 + i * 2.0, y),
            Offset(17.0 + i * 3.0, y),
            seed: i * 3.1,
            amp: 0.5,
          ),
          color: ink,
          width: 1.8,
          opacity: 0.40,
          ghost: false,
        );
      }
    }

    // Lean forward when running.
    if (pose == ToadPose.run) {
      canvas.translate(50.0, groundY);
      canvas.rotate(-0.14);
      canvas.translate(-50.0, -groundY);
    }

    // Far legs behind the body.
    _leg(canvas, side: -1, back: true, far: true, ph: ph);
    _leg(canvas, side: 1, back: false, far: true, ph: ph);

    final sleep = pose == ToadPose.sleep;
    final bodyCenter = Offset(50.0, 56.0 + _bob + (sleep ? 5.0 : 0.0));
    final bodyPath = sketchEllipse(
      bodyCenter,
      26.0,
      sleep ? 16.5 : 19.0,
      seed: 2.2,
      amp: 1.1,
    );
    canvas.drawPath(bodyPath, sketchFillPaint(bodyC));
    drawSketchStroke(canvas, bodyPath, color: ink, width: stroke);

    final bellyPath = sketchEllipse(
      Offset(51.0, bodyCenter.dy + 8.0),
      16.0,
      10.5,
      seed: 5.5,
      amp: 0.8,
    );
    canvas.drawPath(bellyPath, sketchFillPaint(palette.belly));
    drawSketchStroke(
      canvas,
      bellyPath,
      color: ink,
      width: stroke * 0.7,
      opacity: 0.55,
      ghost: false,
    );

    // Near legs in front of the body.
    _leg(canvas, side: -1, back: true, far: false, ph: ph);
    _leg(canvas, side: 1, back: false, far: false, ph: ph);

    // Eye bumps.
    for (final side in const [-1.0, 1.0]) {
      final c = Offset(
        50.0 + side * 12.5,
        bodyCenter.dy - 19.0 + (sleep ? 2.0 : 0.0),
      );
      final bump = sketchEllipse(c, 8.0, 7.4, seed: 9.0 + side, amp: 0.8);
      canvas.drawPath(bump, sketchFillPaint(bodyC));
      drawSketchStroke(canvas, bump, color: ink, width: stroke, ghost: false);
      if (sleep) {
        drawSketchStroke(
          canvas,
          sketchArc(
            c.translate(0.0, 1.0),
            4.5,
            0.3,
            math.pi * 0.8,
            seed: 3.0 + side,
            amp: 0.3,
          ),
          color: ink,
          width: stroke * 0.9,
          ghost: false,
        );
      } else {
        final eye = sketchEllipse(
          c.translate(0.0, -0.5),
          4.6,
          4.9,
          seed: 12.0 + side,
          amp: 0.5,
        );
        canvas.drawPath(eye, sketchFillPaint(const Color(0xFFFFF9E8)));
        drawSketchStroke(
          canvas,
          eye,
          color: ink,
          width: stroke * 0.8,
          ghost: false,
        );
        canvas.drawCircle(c.translate(1.6, -0.4), 2.1, sketchFillPaint(ink));
      }
    }

    // Rosy cheeks.
    if (!sleep) {
      for (final side in const [-1.0, 1.0]) {
        canvas.drawCircle(
          Offset(50.0 + side * 15.0, bodyCenter.dy + 2.0),
          2.6,
          sketchFillPaint(palette.cheek, opacity: 0.45),
        );
      }
    }

    // Mouth.
    final mouthC = Offset(52.0, bodyCenter.dy + 7.0);
    if (sleep) {
      final o = sketchEllipse(
        mouthC.translate(-1.0, 0.0),
        2.6,
        1.8,
        seed: 8.0,
        sweep: math.pi * 1.2,
      );
      drawSketchStroke(canvas, o, color: ink, width: stroke * 0.8, ghost: false);
    } else if (pose == ToadPose.run || pose == ToadPose.cheer) {
      final open = sketchEllipse(
        mouthC,
        5.2,
        3.6,
        seed: 4.4,
        sweep: math.pi * 2.02,
      );
      canvas.drawPath(open, sketchFillPaint(palette.belly));
      drawSketchStroke(
        canvas,
        open,
        color: ink,
        width: stroke * 0.9,
        ghost: false,
      );
    } else {
      drawSketchStroke(
        canvas,
        sketchArc(
          mouthC.translate(-2.0, -1.0),
          7.5,
          0.25,
          math.pi * 0.75,
          seed: 6.6,
          rx: 7.5,
          ry: 5.5,
        ),
        color: ink,
        width: stroke * 0.9,
        ghost: false,
      );
    }

    // Nostrils.
    canvas.drawCircle(
      Offset(48.5, bodyCenter.dy - 1.5),
      0.8,
      sketchFillPaint(ink, opacity: 0.75),
    );
    canvas.drawCircle(
      Offset(54.5, bodyCenter.dy - 1.5),
      0.8,
      sketchFillPaint(ink, opacity: 0.75),
    );

    // Back spots.
    final spots = [
      Offset(38.0, bodyCenter.dy - 8.0),
      Offset(60.0, bodyCenter.dy - 10.0),
      Offset(46.0, bodyCenter.dy - 13.0),
      Offset(66.0, bodyCenter.dy - 3.0),
    ];
    for (var i = 0; i < spots.length; i++) {
      canvas.drawCircle(
        spots[i],
        2.0 + (i % 2) * 0.8,
        sketchFillPaint(palette.spot, opacity: 0.50),
      );
    }
  }

  void _leg(
    Canvas canvas, {
    required double side,
    required bool back,
    required bool far,
    required double ph,
  }) {
    final ink = palette.ink;
    final bodyC = palette.body;
    final run = pose == ToadPose.run;
    final sleep = pose == ToadPose.sleep;
    final moving = pose == ToadPose.walk || pose == ToadPose.run;
    final p = moving ? (ph + (far ? 0.5 : 0.0)) % 1.0 : 0.0;
    final theta = p * 2 * math.pi;

    final hipX = 50.0 + side * (back ? 21.0 : 13.0);
    final hipY = back ? 66.0 : 63.0;
    final footRestX = 50.0 + side * (back ? 22.0 : 15.0);
    final stride = back ? (run ? 11.0 : 7.0) : (run ? 8.0 : 4.5);
    final lift = back ? (run ? 5.0 : 3.2) : (run ? 4.0 : 2.2);
    const groundY = 86.0;

    double footX;
    double footY;
    if (sleep) {
      footX = footRestX + side * 1.5;
      footY = groundY - 1.5;
    } else if (pose == ToadPose.cheer && !back) {
      // Arms up in celebration.
      footX = 50.0 + side * 24.0;
      footY = 46.0;
    } else {
      footX = footRestX + math.sin(theta) * stride;
      footY = groundY - math.max(0.0, math.sin(theta + 1.1)) * lift;
    }

    final hip = Offset(hipX, hipY + _bob * (back ? 0.9 : 0.8));
    if (back) {
      final haunch = sketchEllipse(
        hip,
        9.5,
        8.5,
        seed: 20.0 + side + (far ? 5.0 : 0.0),
        amp: 0.9,
      );
      canvas.drawPath(haunch, sketchFillPaint(bodyC, opacity: far ? 0.88 : 1.0));
      drawSketchStroke(
        canvas,
        haunch,
        color: ink,
        width: stroke * 0.95,
        opacity: far ? 0.75 : 1.0,
        ghost: false,
      );
    }

    final knee =
        Offset((hip.dx + footX) / 2, (hip.dy + footY) / 2) +
        Offset(-2.0, back ? -5.0 : -3.5);
    final limb = sketchThrough(
      [hip, knee, Offset(footX, footY)],
      seed: 30.0 + side + (far ? 7.0 : 0.0),
      amp: 0.5,
    );
    drawSketchStroke(
      canvas,
      limb,
      color: ink,
      width: stroke * 1.15,
      opacity: far ? 0.75 : 1.0,
      ghost: false,
    );

    final foot = Offset(footX, footY);
    canvas.drawCircle(
      foot,
      back ? 2.6 : 2.0,
      sketchFillPaint(ink, opacity: far ? 0.75 : 1.0),
    );
    drawSketchStroke(
      canvas,
      sketchLine(foot, foot + const Offset(3.4, -0.6),
          seed: 41.0 + side, amp: 0.3),
      color: ink,
      width: stroke * 0.6,
      opacity: far ? 0.75 : 1.0,
      ghost: false,
    );
    drawSketchStroke(
      canvas,
      sketchLine(foot + const Offset(0.8, 0.4), foot + const Offset(3.8, 0.8),
          seed: 43.0 + side, amp: 0.3),
      color: ink,
      width: stroke * 0.6,
      opacity: far ? 0.75 : 1.0,
      ghost: false,
    );
  }

  @override
  bool shouldRepaint(covariant ToadPainter oldDelegate) {
    return oldDelegate.pose != pose ||
        oldDelegate.phase != phase ||
        oldDelegate.palette != palette ||
        oldDelegate.stroke != stroke;
  }
}

/// The live mascot: a gently bobbing toad that hops into a little cheer when
/// tapped. The idle cycle redraws only on animation ticks and the painter is
/// deterministic, so the ink never shimmers between frames.
class SketchToad extends StatefulWidget {
  final double size;
  final ToadPose pose;
  final bool tappable;

  const SketchToad({
    super.key,
    this.size = 96,
    this.pose = ToadPose.idle,
    this.tappable = true,
  });

  @override
  State<SketchToad> createState() => _SketchToadState();
}

class _SketchToadState extends State<SketchToad>
    with TickerProviderStateMixin {
  late final AnimationController _idle = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 2600),
  )..repeat();

  late final AnimationController _cheer = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 780),
  );

  bool _cheering = false;

  @override
  void initState() {
    super.initState();
    _cheer.addStatusListener((status) {
      if (status == AnimationStatus.completed && mounted) {
        setState(() => _cheering = false);
      }
    });
  }

  @override
  void dispose() {
    _idle.dispose();
    _cheer.dispose();
    super.dispose();
  }

  void _hop() {
    if (!widget.tappable || _cheering) return;
    setState(() => _cheering = true);
    _cheer.forward(from: 0);
  }

  @override
  Widget build(BuildContext context) {
    final palette = ToadPalette.of(Theme.of(context).brightness);
    return GestureDetector(
      onTap: _hop,
      behavior: HitTestBehavior.opaque,
      child: AnimatedBuilder(
        animation: _cheering ? _cheer : _idle,
        builder: (context, _) {
          return SizedBox.square(
            dimension: widget.size,
            child: CustomPaint(
              painter: ToadPainter(
                pose: _cheering ? ToadPose.cheer : widget.pose,
                phase: (_cheering ? _cheer : _idle).value,
                palette: palette,
              ),
            ),
          );
        },
      ),
    );
  }
}
