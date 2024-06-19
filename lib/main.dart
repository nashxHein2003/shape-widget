import 'package:flutter/material.dart';
import 'package:shapes_widget/shapes_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Shape Widgets Example')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SingleDot(
                size: 20.0,
                color: Colors.blue,
                borderColor: Colors.red,
                borderWidth: 2.0,
              ),
              const SizedBox(height: 20),
              DashLine(
                length: 100.0,
                thickness: 2.0,
                color: Colors.green,
                dashLength: 5.0,
                dashGap: 3.0,
              ),
              const SizedBox(height: 20),
              Triangle(
                size: 50.0,
                color: Colors.orange,
                isEquilateral: true,
                borderWidth: 1.0,
                borderColor: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
