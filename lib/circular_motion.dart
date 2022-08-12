import 'package:flutter/material.dart';
import 'package:circular_motion/circular_motion.dart';

class CircularMotionDemo extends StatefulWidget {
  final String title;

  const CircularMotionDemo({Key? key, required this.title}) : super(key: key);

  @override
  State<CircularMotionDemo> createState() => _CircularMotionDemoState();
}

class _CircularMotionDemoState extends State<CircularMotionDemo> {
  @override
  Widget build(BuildContext context) {
    double w = (MediaQuery.of(context).size.shortestSide / 100).roundToDouble();

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          width: w * 60,
          height: w * 60,
          alignment: Alignment.center,
          child: CircularMotion(
            centerWidget: Card(
              color: Colors.red,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(w * 2)),
              child: Container(
                width: w * 20,
                height: w * 20,
                alignment: Alignment.center,
                child: Text(
                  'Circular Motion',
                  style: TextStyle(
                    fontSize: w * 2,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            children: List.generate(
              Colors.primaries.length,
              (index) {
                return CircleAvatar(
                  radius: w * 3,
                  backgroundColor: Colors.primaries[index],
                  child: Center(
                    child: Text(
                      '$index',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: w * 2,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
