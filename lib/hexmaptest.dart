import 'package:flutter/material.dart';
import 'package:hexagon/hexagon.dart';
import 'package:align_positioned/align_positioned.dart';
import 'dart:ui' as ui;

// code from https://pub.dev/packages/hexagon/versions/0.2.0-nullsafety.1/example
// edited for debugging

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.green), home: HexMap());
  }
}

class HexMap extends StatefulWidget {
  const HexMap({Key? key}) : super(key: key);
  @override
  HexMapState createState() => HexMapState();
}

class HexMapState extends State<HexMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('HexMap Example')),
        body: Center(
          child: CustomPaint(
              size: Size(
                  1000,
                  (1600 * 0.5833333333333334)
                      .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
              painter: RPSCustomPainter()),
        ));
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_1 = Path();

    Paint paint_1_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.001875000;
    paint_1_stroke.color = Color.fromRGBO(0, 0, 0, 1.0).withOpacity(0.9);
    canvas.drawPath(path_1, paint_1_stroke);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.2427360, size.height * 0.2633310);
    path_2.lineTo(size.width * 0.2262679, size.height * 0.2348074);
    path_2.lineTo(size.width * 0.1933317, size.height * 0.2348074);
    path_2.lineTo(size.width * 0.1768636, size.height * 0.2633310);
    path_2.lineTo(size.width * 0.1933317, size.height * 0.2918546);
    path_2.lineTo(size.width * 0.2262679, size.height * 0.2918546);
    path_2.lineTo(size.width * 0.2427360, size.height * 0.2633310);

    Paint paint_2_fill = Paint()..style = PaintingStyle.fill;
    paint_2_fill.color = Color(0xff51B8F3).withOpacity(0.4);
    canvas.drawPath(path_2, paint_2_fill);

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.2427360, size.height * 0.2633310);
    path_5.lineTo(size.width * 0.2756722, size.height * 0.2633310);
    path_5.lineTo(size.width * 0.2921403, size.height * 0.2348074);
    path_5.lineTo(size.width * 0.2756722, size.height * 0.2062838);
    path_5.lineTo(size.width * 0.2427360, size.height * 0.2062838);
    path_5.lineTo(size.width * 0.2262679, size.height * 0.2348074);
    path_5.lineTo(size.width * 0.2427360, size.height * 0.2633310);

    Paint paint_5_fill = Paint()..style = PaintingStyle.fill;
    paint_5_fill.color = Color(0xffC8BC9C).withOpacity(0.4);
    canvas.drawPath(path_5, paint_5_fill);

    Path path_8 = Path();
    path_8.moveTo(size.width * 0.1933317, size.height * 0.2348074);
    path_8.lineTo(size.width * 0.2262679, size.height * 0.2348074);
    path_8.lineTo(size.width * 0.2427360, size.height * 0.2062838);
    path_8.lineTo(size.width * 0.2262679, size.height * 0.1777603);
    path_8.lineTo(size.width * 0.1933317, size.height * 0.1777603);
    path_8.lineTo(size.width * 0.1768636, size.height * 0.2062838);
    path_8.lineTo(size.width * 0.1933317, size.height * 0.2348074);

    Paint paint_8_fill = Paint()..style = PaintingStyle.fill;
    paint_8_fill.color = Color(0xffC8BC9C).withOpacity(0.4);
    canvas.drawPath(path_8, paint_8_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
