import 'dart:math';

import 'package:flutter/material.dart';

class MyTomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Size(:width, :height) = size;
    final center = Offset(width / 2, height / 2);
    final radius = min(width, height) / 2;

    // Path path = Path();
    // path.lineTo(width, 0);
    // path.lineTo(width, height);
    // path.lineTo(0, height);
    // path.close();
    // canvas.drawPath(path, Paint()..color = Colors.amber);

    Path headPath = Path();
    headPath.moveTo(radius * 0.5, radius * 0.5);
    //1
    headPath.quadraticBezierTo(
        radius * 0.49, radius * 0.25, radius * 0.805, radius * 0.23);
    //2
    headPath.quadraticBezierTo(
        radius * 0.65, radius * 0.19, radius * 0.5, radius * 0.25);
    headPath.quadraticBezierTo(
        radius * 0.65, radius * 0.16, radius * 0.8, radius * 0.2);
    //3
    headPath.quadraticBezierTo(
        radius * 0.8, radius * 0.16, radius * 0.75, radius * 0.15);
    headPath.quadraticBezierTo(
        radius * 0.83, radius * 0.15, radius * 0.85, radius * 0.25);

    headPath.lineTo(radius * 0.84, radius * 0.205);
    //4
    headPath.quadraticBezierTo(
        radius * 0.86, radius * 0.15, radius * 0.91, radius * 0.15);
    headPath.quadraticBezierTo(
        radius * 0.85, radius * 0.16, radius * 0.87, radius * 0.23);

    // headPath.quadraticBezierTo(
    //     radius * 0.82, radius * 0.2, radius * 0.83, radius * 0.19);
    headPath.lineTo(radius * 0.85, radius * 0.27);
    // 5 (Upper ear)
    headPath.quadraticBezierTo(
        radius * 0.9, radius * 0.15, radius * 1.11, radius * 0.06);
    headPath.quadraticBezierTo(
        radius * 1.05, radius * 0.11, radius * 1.05, radius * 0.12);

    headPath.lineTo(radius * 1.07, radius * 0.52);
    // 6 (lower ear)
    headPath.quadraticBezierTo(
        radius * 1.1, radius * 0.52, radius * 1.11, radius * 0.56);
    headPath.quadraticBezierTo(
        radius * 1.07, radius * 0.54, radius * 1.06, radius * 0.55);

    headPath.quadraticBezierTo(
        radius * 1.02, radius * 0.54, radius * 1.02, radius * 0.54);
    // 7
    headPath.quadraticBezierTo(
        radius * 1.06, radius * 0.54, radius * 1.13, radius * 0.6);

    // headPath.cubicTo(radius * 0.9, radius * 0.58, radius * 0.8, radius * 0.8,
    //     radius * 0.7, radius * 0.85);
    headPath.quadraticBezierTo(
        radius * 1, radius * 0.58, radius * 0.75, radius * 0.8);

    // headPath.cubicTo(radius * 0.5, radius * 0.9, radius * 0.7, radius * 0.62,
    //     radius * 0.4, radius * 0.55);

    headPath.quadraticBezierTo(
        radius * 0.55, radius * 0.72, radius * 0.5, radius * 0.71);

    // 9
    headPath.cubicTo(radius * 0.37, radius * 0.68, radius * 0.37, radius * 0.45,
        radius * 0.5, radius * 0.5);
    headPath.close();

    //backear

    Path backEar = Path();
    backEar.moveTo(radius * 0.65, radius * 0.3);
    backEar.lineTo(radius * 0.635, radius * 0.025);
    backEar.lineTo(radius * 0.78, radius * 0.25);
    canvas.drawPath(
        backEar, Paint()..color = const Color.fromARGB(255, 138, 138, 138));
    canvas.drawPath(
        backEar,
        Paint()
          ..color = Colors.black
          ..style = PaintingStyle.stroke);

    //headDraw
    canvas.drawPath(
        headPath,
        Paint()
          ..color = Colors.black
          ..style = PaintingStyle.stroke
          ..strokeWidth = 1);
    canvas.drawPath(
        headPath,
        Paint()
          ..color = const Color.fromARGB(255, 138, 138, 138)
          ..style = PaintingStyle.fill);

    Path earPath = Path();
    earPath.moveTo(radius, radius * 0.3);
    earPath.cubicTo(radius * 0.9, radius * 0.38, radius * 0.9, radius * 0.2,
        radius * 1.084, radius * 0.083);
    earPath.cubicTo(radius, radius * 0.23, radius * 1.35, radius * 0.4,
        radius * 1.07, radius * 0.52);
    earPath.cubicTo(radius * 0.9, radius * 0.45, radius * 0.95, radius * 0.3,
        radius, radius * 0.37);

    earPath.quadraticBezierTo(
        radius, radius * 0.34, radius * 0.98, radius * 0.34);
    earPath.quadraticBezierTo(
        radius, radius * 0.32, radius * 1.01, radius * 0.35);
    earPath.quadraticBezierTo(
        radius, radius * 0.31, radius * 0.97, radius * 0.34);
    earPath.quadraticBezierTo(radius, radius * 0.3, radius, radius * 0.3);

    canvas.drawPath(
        earPath,
        Paint()
          ..color = const Color.fromARGB(255, 250, 172, 152)
          ..style = PaintingStyle.fill);
    canvas.drawPath(
        earPath,
        Paint()
          ..color = Colors.black
          ..style = PaintingStyle.stroke);

    // eyes center
    Path eyesCenterpath = Path();
    eyesCenterpath.moveTo(radius * 0.52, radius * 0.55);
    eyesCenterpath.lineTo(radius * 0.565, radius * 0.41);
    eyesCenterpath.quadraticBezierTo(
        radius * 0.57, radius * 0.35, radius * 0.585, radius * 0.4);
    eyesCenterpath.cubicTo(radius * 0.59, radius * 0.34, radius * 0.63,
        radius * 0.34, radius * 0.61, radius * 0.4);
    eyesCenterpath.quadraticBezierTo(
        radius * 0.65, radius * 0.36, radius * 0.63, radius * 0.42);
    eyesCenterpath.lineTo(radius * 0.61, radius * 0.57);
    canvas.drawPath(
        eyesCenterpath,
        Paint()
          ..color = Colors.black
          ..style = PaintingStyle.stroke);
    canvas.drawPath(
        eyesCenterpath,
        Paint()
          ..color = const Color.fromARGB(255, 203, 197, 197)
          ..style = PaintingStyle.fill);

    //left eye
    Path leftEyePath = Path();
    leftEyePath.moveTo(radius * 0.506, radius * 0.54);
    leftEyePath.cubicTo(radius * 0.47, radius * 0.33, radius * 0.64,
        radius * 0.33, radius * 0.53, radius * 0.54);
    canvas.drawPath(
        leftEyePath,
        Paint()
          ..color = Colors.black
          ..style = PaintingStyle.stroke);
    canvas.drawPath(
        leftEyePath,
        Paint()
          ..color = const Color.fromARGB(255, 251, 230, 125)
          ..style = PaintingStyle.fill);

    //left eye iris
    Path leftEyeIrisPath = Path();
    leftEyeIrisPath.moveTo(radius * 0.51, radius * 0.54);
    leftEyeIrisPath.cubicTo(radius * 0.47, radius * 0.44, radius * 0.56,
        radius * 0.46, radius * 0.53, radius * 0.54);
    canvas.drawPath(
        leftEyeIrisPath,
        Paint()
          ..color = Colors.black
          ..style = PaintingStyle.stroke);
    canvas.drawPath(
        leftEyeIrisPath,
        Paint()
          ..color = const Color.fromARGB(255, 75, 185, 21)
          ..style = PaintingStyle.fill);

    //left eye pupil
    Path leftEyePupilPath = Path();
    leftEyePupilPath.moveTo(radius * 0.51, radius * 0.54);
    leftEyePupilPath.cubicTo(radius * 0.47, radius * 0.46, radius * 0.55,
        radius * 0.48, radius * 0.525, radius * 0.54);
    canvas.drawPath(leftEyePupilPath, Paint()..color = Colors.black);

    //right eye

    Path rightEyePath = Path();
    rightEyePath.moveTo(radius * 0.605, radius * 0.55);
    rightEyePath.cubicTo(radius * 0.6, radius * 0.3, radius * 0.8,
        radius * 0.36, radius * 0.65, radius * 0.56);
    canvas.drawPath(
        rightEyePath,
        Paint()
          ..color = Colors.black
          ..style = PaintingStyle.stroke);
    canvas.drawPath(
        rightEyePath,
        Paint()
          ..color = const Color.fromARGB(255, 251, 230, 125)
          ..style = PaintingStyle.fill);

    //right eye iris
    Path rightEyeIrisPath = Path();
    rightEyeIrisPath.moveTo(radius * 0.605, radius * 0.55);
    rightEyeIrisPath.cubicTo(radius * 0.6, radius * 0.42, radius * 0.68,
        radius * 0.5, radius * 0.63, radius * 0.56);
    canvas.drawPath(
        rightEyeIrisPath,
        Paint()
          ..color = Colors.black
          ..style = PaintingStyle.stroke);
    canvas.drawPath(
        rightEyeIrisPath,
        Paint()
          ..color = const Color.fromARGB(255, 75, 185, 21)
          ..style = PaintingStyle.fill);

    //right eye pupil
    Path rightEyePupilPath = Path();
    rightEyePupilPath.moveTo(radius * 0.605, radius * 0.55);
    rightEyePupilPath.cubicTo(radius * 0.595, radius * 0.46, radius * 0.65,
        radius * 0.51, radius * 0.62, radius * 0.56);
    canvas.drawPath(rightEyePupilPath, Paint()..color = Colors.black);

    //right eye brow

    Path leftEyeBrowPath = Path();
    leftEyeBrowPath.moveTo(radius * 0.53, radius * 0.35);
    leftEyeBrowPath.quadraticBezierTo(
        radius * 0.55, radius * 0.28, radius * 0.58, radius * 0.35);
    leftEyeBrowPath.quadraticBezierTo(
        radius * 0.54, radius * 0.32, radius * 0.52, radius * 0.38);
    canvas.drawPath(leftEyeBrowPath, Paint()..color = Colors.black);

    Path leftEyeBrowTopPath = Path();
    leftEyeBrowTopPath.moveTo(radius * 0.565, radius * 0.3);
    leftEyeBrowTopPath.quadraticBezierTo(
        radius * 0.59, radius * 0.31, radius * 0.6, radius * 0.33);
    leftEyeBrowTopPath.quadraticBezierTo(
        radius * 0.585, radius * 0.29, radius * 0.565, radius * 0.3);
    canvas.drawPath(leftEyeBrowTopPath, Paint()..color = Colors.black);
    //right eye brow
    Path rightEyeBrowPath = Path();
    rightEyeBrowPath.moveTo(radius * 0.68, radius * 0.32);
    rightEyeBrowPath.quadraticBezierTo(
        radius * 0.74, radius * 0.23, radius * 0.73, radius * 0.38);
    rightEyeBrowPath.quadraticBezierTo(
        radius * 0.71, radius * 0.28, radius * 0.68, radius * 0.32);
    canvas.drawPath(rightEyeBrowPath, Paint()..color = Colors.black);

    //mouth path
    Path mouthPath = Path();
    mouthPath.moveTo(radius * 0.505, radius * 0.6);
    mouthPath.cubicTo(radius * 0.51, radius * 0.77, radius * 0.58, radius * 0.7,
        radius * 0.615, radius * 0.78);
    mouthPath.cubicTo(radius * 0.66, radius * 0.85, radius * 0.72,
        radius * 0.86, radius * 0.78, radius * 0.76);
    mouthPath.cubicTo(radius * 0.9, radius * 0.65, radius * 0.88, radius * 0.66,
        radius * 0.87, radius * 0.55);
    canvas.drawPath(mouthPath, Paint()..color = Colors.white);
    canvas.drawPath(
        mouthPath,
        Paint()
          ..color = Colors.black
          ..style = PaintingStyle.stroke);

    //inner mouth
    Path innerMouthPath = Path();
    innerMouthPath.moveTo(radius * 0.6, radius * 0.66);
    innerMouthPath.cubicTo(radius * 0.65, radius * 0.87, radius * 0.72,
        radius * 0.79, radius * 0.79, radius * 0.6);
    canvas.drawPath(
        innerMouthPath, Paint()..color = const Color.fromARGB(255, 120, 18, 1));
    canvas.drawPath(
        innerMouthPath,
        Paint()
          ..color = Colors.black
          ..style = PaintingStyle.stroke);

    // tongue path
    Path tonguePath = Path();
    tonguePath.moveTo(radius * 0.645, radius * 0.77);
    tonguePath.quadraticBezierTo(
        radius * 0.64, radius * 0.71, radius * 0.69, radius * 0.72);
    tonguePath.quadraticBezierTo(
        radius * 0.72, radius * 0.67, radius * 0.747, radius * 0.7);
    tonguePath.cubicTo(radius * 0.72, radius * 0.78, radius * 0.66,
        radius * 0.8, radius * 0.645, radius * 0.77);
    canvas.drawPath(
        tonguePath, Paint()..color = const Color.fromARGB(255, 244, 34, 46));
    canvas.drawPath(
        tonguePath,
        Paint()
          ..color = Colors.black
          ..style = PaintingStyle.stroke);

    canvas.drawLine(Offset(radius * 0.69, radius * 0.72),
        Offset(radius * 0.68, radius * 0.74), Paint()..color = Colors.black);

    // nose path
    Path nosePath = Path();
    nosePath.moveTo(radius * 0.57, radius * 0.56);
    nosePath.cubicTo(radius * 0.43, radius * 0.47, radius * 0.43, radius * 0.68,
        radius * 0.55, radius * 0.64);
    nosePath.cubicTo(radius * 0.61, radius * 0.72, radius * 0.64,
        radius * 0.615, radius * 0.69, radius * 0.64);
    nosePath.lineTo(radius * 0.67, radius * 0.59);
    nosePath.quadraticBezierTo(
        radius * 0.62, radius * 0.515, radius * 0.57, radius * 0.56);

    canvas.drawPath(nosePath, Paint()..color = Colors.white);
    canvas.drawPath(
        nosePath,
        Paint()
          ..color = Colors.black
          ..style = PaintingStyle.stroke);

    //side curve path
    Path sidePath = Path();
    sidePath.moveTo(radius * 0.665, radius * 0.54);
    sidePath.cubicTo(radius * 0.57, radius * 0.68, radius * 0.7, radius * 0.7,
        radius * 0.87, radius * 0.55);

    Path sidePath2 = Path();

    sidePath2.moveTo(radius * 0.87, radius * 0.55);
    sidePath2.quadraticBezierTo(
        radius * 0.9, radius * 0.54, radius * 0.9, radius * 0.56);

    canvas.drawPath(
        sidePath,
        Paint()
          ..color = const Color.fromARGB(255, 138, 138, 138)
          ..style = PaintingStyle.fill);
    canvas.drawPath(
        sidePath,
        Paint()
          ..color = Colors.black
          ..style = PaintingStyle.stroke);
    canvas.drawPath(
        sidePath2,
        Paint()
          ..color = Colors.black
          ..style = PaintingStyle.stroke);

    //uppernose
    Path upperNosePath = Path();
    upperNosePath.moveTo(radius * 0.58, radius * 0.553);
    upperNosePath.quadraticBezierTo(
        radius * 0.54, radius * 0.575, radius * 0.55, radius * 0.6);
    upperNosePath.cubicTo(radius * 0.5, radius * 0.555, radius * 0.5,
        radius * 0.505, radius * 0.58, radius * 0.553);

    canvas.drawPath(
        upperNosePath, Paint()..color = const Color.fromARGB(255, 94, 94, 94));
    canvas.drawPath(
        upperNosePath,
        Paint()
          ..color = Colors.black
          ..style = PaintingStyle.stroke);

    // moustache path
    Path moustachePath1 = Path();
    moustachePath1.moveTo(radius * 0.605, radius * 0.63);
    moustachePath1.quadraticBezierTo(
        radius * 0.85, radius * 0.47, radius * 0.92, radius * 0.53);
    canvas.drawPath(
        moustachePath1,
        Paint()
          ..color = Colors.black
          ..style = PaintingStyle.stroke);

    //moustache2 path
    Path moustachePath2 = Path();
    moustachePath2.moveTo(radius * 0.605, radius * 0.61);
    moustachePath2.quadraticBezierTo(
        radius * 0.72, radius * 0.47, radius * 0.84, radius * 0.48);
    canvas.drawPath(
        moustachePath2,
        Paint()
          ..color = Colors.black
          ..style = PaintingStyle.stroke);

    //moustache3
    Path moustachePath3 = Path();
    moustachePath3.moveTo(radius * 0.505, radius * 0.58);
    moustachePath3.quadraticBezierTo(
        radius * 0.35, radius * 0.4, radius * 0.24, radius * 0.41);
    canvas.drawPath(
        moustachePath3,
        Paint()
          ..color = Colors.black
          ..style = PaintingStyle.stroke);

    //moustache4
    Path moustachePath4 = Path();
    moustachePath4.moveTo(radius * 0.505, radius * 0.61);
    moustachePath4.quadraticBezierTo(
        radius * 0.35, radius * 0.49, radius * 0.25, radius * 0.5);
    canvas.drawPath(
        moustachePath4,
        Paint()
          ..color = Colors.black
          ..style = PaintingStyle.stroke);
  }

  @override
  bool shouldRepaint(MyTomPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(MyTomPainter oldDelegate) => false;
}
