import 'package:flutter/material.dart';

class SkiaPaintDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _MyPainter(context: context),
      child: Container(
        height: 400,
        width: 400,
      ),
    );
  }
}

class _MyPainter extends CustomPainter {
  final BuildContext context;

  _MyPainter({this.context});

  @override
  void paint(Canvas canvas, Size size) {

    canvas.drawColor(Color(0xFFFFFFFF),BlendMode.color); //    canvas->drawColor(SK_ColorWHITE);

    final Paint paint = Paint(); //SkPaint paint;

    paint.style = PaintingStyle.stroke; //paint.setStyle(SkPaint::kStroke_Style);
    paint.strokeWidth = 8; // paint.setStrokeWidth(8);
    paint.color = Color(0xff4285F4); //paint.setColor(0xff4285F4);
    paint.isAntiAlias = true; //paint.setAntiAlias(true);
    paint.strokeCap = StrokeCap.round; //paint.setStrokeCap(SkPaint::kRound_Cap);

    final Path path = Path(); //SkPath path;

    path.moveTo(10, 10); //path.moveTo(10, 10);
    path.quadraticBezierTo(256, 64, 128, 128); //path.quadTo(256, 64, 128, 128);
    path.quadraticBezierTo(10, 192, 250, 250); //path.quadTo(10, 192, 250, 250);

    canvas.drawPath(path, paint); //canvas->drawPath(path, paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}