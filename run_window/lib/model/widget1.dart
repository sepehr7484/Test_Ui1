import 'package:flutter/material.dart';
import 'package:run_window/style.dart';
import 'dart:math' as math;

class CateGoryItem extends StatelessWidget {
  final String? title;
  final String? task;
  final String? img;
  const CateGoryItem(this.title, this.task, this.img, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      decoration: styleCategory(Colors.greenAccent, 15),
      height: 220,
      margin: const EdgeInsets.symmetric(horizontal: 7.5, vertical: 5),
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            // '   Website',

            title.toString(),
            style: txtsty(
              25,
              Colors.black,
            ),
          ),
          Text(
            // '      05 Tasks',
            task.toString(),
            style: txtsty(15, Colors.red),
          ),
          const Spacer(),
          Image(image: AssetImage(img.toString()))
        ],
      ),
    ));
  }
}

circleAvetor(String urlimg) {
  return CircleAvatar(
    backgroundImage: AssetImage('img/$urlimg.png'),
    radius: 25,
  );
}

DateTime timers1 = new DateTime.now();

class MyPointer extends CustomPainter {
  final double angel;
  const MyPointer(this.angel);

  @override
  void paint(Canvas canvas, Size size) {
    var pain1 = Paint()
      ..color = Colors.green.shade400
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    canvas.drawArc(
        //const Offset(0, 0) & size,
        Rect.fromLTRB(0, 0, size.width, size.height),
        -math.pi / 2,
        math.pi * 2 * angel / 100,
        false,
        pain1);
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
}

double enableangel = 50;
double desangel = 100;
