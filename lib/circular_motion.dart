import 'package:flutter/material.dart';
import 'package:circular_motion/circular_motion.dart';

class CircularMotionDemo extends StatefulWidget {
  final String title;
  const CircularMotionDemo({Key? key,required this.title}) : super(key: key);

  @override
  State<CircularMotionDemo> createState() => _CircularMotionDemoState();
}

class _CircularMotionDemoState extends State<CircularMotionDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      )
    );
  }
}
