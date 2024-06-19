import 'package:flutter/material.dart';

/// The main entry point for the application.
void main() {
  runApp(const MyApp());
}

/// The main application widget.
///
/// This widget is the root of your application.
class MyApp extends StatelessWidget {
  /// Creates the main application widget.
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shapes Widget Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Shapes Widget Example'),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Your example widgets go here
            ],
          ),
        ),
      ),
    );
  }
}
