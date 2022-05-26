import 'package:flutter/material.dart';

class HorizontalLinePainter extends CustomPainter {
  double width;
  HorizontalLinePainter(this.width);

  @override
  void paint(Canvas canvas, Size size) {
    var p1 = const Offset(0, 0);
    var p2 = Offset(width, 0);
    final paint = Paint()
      ..color = Colors.black.withOpacity(0.15)
      ..strokeWidth = 1;
    canvas.drawLine(p1, p2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return false;
  }


}