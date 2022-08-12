import 'package:circular_motion_demo/circular_motion.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Circular Motion Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.red,
          // primary: Colors.blue,
          // secondary: Colors.orange,
        ),
        useMaterial3: true,
      ),
      home: const CircularMotionDemo(title: 'Circular Motion'),
    );
  }
}
