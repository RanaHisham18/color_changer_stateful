import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color _backgroundColor = Colors.white;

  void _changeBackgroundColor() {
    setState(() {
      // Generate a random color
      _backgroundColor = Color(Random().nextInt(0xFFFFFFFF));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Color Changer'),
        ),
        body: Container(
          color: _backgroundColor,
          child: Center(
            child: ElevatedButton(
              onPressed: _changeBackgroundColor,
              child: Text('Change Color'),
            ),
          ),
        ),
      ),
    );
  }
}