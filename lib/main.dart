import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: TestScreen(),
      ),
    );
  }
}

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen>
    with SingleTickerProviderStateMixin {
  Offset position = const Offset(0.5, 0.5);
  Color color = Colors.red;

  late AnimationController _controller;

  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticOut,
  );

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          left: position.dx,
          top: position.dy,
          child: GestureDetector(
            onPanUpdate: (details) {
              setState(() {
                position = Offset(position.dx + details.delta.dx,
                    position.dy + details.delta.dy);
              });
            },
            onTap: () {
              setState(() {
                color = color == Colors.red ? Colors.blue : Colors.red;
              });
            },
            onLongPress: () {
              _controller.animateTo(Random().nextDouble());
            },
            child: RotationTransition(
              turns: _animation,
              child: Container(
                width: 100.0,
                height: 100.0,
                color: color,
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: GestureDetector(
            onPanUpdate: (details) {
              setState(() {
                position = Offset(position.dx + details.delta.dx,
                    position.dy + details.delta.dy);
              });
            },
            onTap: () {
              setState(() {
                color = color == Colors.red ? Colors.blue : Colors.red;
              });
            },
            onLongPress: () {
              _controller.animateTo(Random().nextDouble());
            },
          ),
        ),
      ],
    );
  }
}
