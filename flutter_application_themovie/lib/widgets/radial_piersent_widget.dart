import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';


class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 100,
        height: 100,
     
        child: RadialPersentWindget(
          persent: 0.58,
          fillColor: Colors.blue,
          lineColor: Colors.red,
          freeColor: Colors.yellow,
          lineWidth: 5,
          child: Text('58%', style: TextStyle(color: Colors.white),),
        )         ,
        ),
      );
  }
}

class RadialPersentWindget extends StatelessWidget {
  final Widget child;
  final double persent;
  final Color fillColor;
  final Color lineColor;
  final Color freeColor;
  final double lineWidth;

  const RadialPersentWindget({super.key, required this.child, required this.persent, required this.fillColor, required this.lineColor, required this.freeColor, required this.lineWidth});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        CustomPaint(painter: MyPainter(
          persent: persent,
          fillColor: fillColor,
          lineColor: lineColor,
          freeColor: freeColor,
          lineWidth: lineWidth
        ),),
        Padding(
          padding: const EdgeInsets.all(11.0),
          child: Center(child: child),
        )
      ],
    );
  }
}


class MyPainter extends CustomPainter{

 
  final double persent;
  final Color fillColor;
  final Color lineColor;
  final Color freeColor;
  final double lineWidth;

  MyPainter({required this.persent, required  this.fillColor, required this.lineColor, required this.freeColor, required this.lineWidth});
  @override
  void paint(Canvas canvas, Size size) {
    Rect arcRect = calculateArcRect(size);

    drowBackground(canvas, size);

     drowFreeArc(canvas, arcRect);
   
    drowFealArc(canvas, arcRect);

      
  }

  void drowFealArc(Canvas canvas, Rect arcRect) {
     final paint = Paint();
    paint.color =lineColor;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth =lineWidth;
    paint.strokeCap = StrokeCap.round;
    canvas.drawArc(arcRect, -pi/2, pi*2*persent, false, paint);
  }

  void drowFreeArc(Canvas canvas, Rect arcRect) {
     final paint = Paint();
        paint.color = freeColor;
        paint.style = PaintingStyle.stroke;
        paint.strokeWidth =lineWidth;
        canvas.drawArc(arcRect, pi*2*persent - (pi/2), pi*2*(1.0-persent) , false, paint);
  }

  void drowBackground(Canvas canvas, Size size) {
     final paint = Paint();
    paint.color = fillColor;
    paint.style = PaintingStyle.fill;
    canvas.drawOval(Offset.zero & size, paint);
  }

  Rect calculateArcRect(Size size) {
     final linesMargin = 3;
    final offset = lineWidth/2 +linesMargin;
    final arcRect =Offset(offset, offset) & 
    Size(size.width - offset*2, size.height-offset*2);
    return arcRect;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
   return true;
  }

}