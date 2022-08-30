import 'package:flutter/cupertino.dart';
import 'package:myhealthcop/colours.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = Colours.appbarColor
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width * 0.0003000, size.height * 0.0031818);
    path0.lineTo(size.width, 0);
    path0.lineTo(size.width * 0.9997000, size.height * 0.7307273);
    path0.quadraticBezierTo(size.width * 0.9618500, size.height * 0.6751818,
        size.width * 0.9264000, size.height * 0.6855909);
    path0.cubicTo(
        size.width * 0.9143000,
        size.height * 0.6780455,
        size.width * 0.7748000,
        size.height * 0.7787273,
        size.width * 0.7117750,
        size.height * 0.8421818);
    path0.cubicTo(
        size.width * 0.6539250,
        size.height * 0.8901818,
        size.width * 0.6375500,
        size.height * 0.9185909,
        size.width * 0.5064000,
        size.height * 0.9774091);
    path0.cubicTo(
        size.width * 0.4270500,
        size.height * 0.9935455,
        size.width * 0.2825000,
        size.height * 0.9749545,
        size.width * 0.2033250,
        size.height * 0.9177273);
    path0.quadraticBezierTo(size.width * 0.1282750, size.height * 0.8700909,
        size.width * 0.0002750, size.height * 0.6948182);
    path0.lineTo(size.width * 0.0003000, size.height * 0.0031818);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
