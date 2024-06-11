import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedGesture extends StatefulWidget {
  const AnimatedGesture({super.key});

  @override
  State<AnimatedGesture> createState() => _AnimatedGestureState();
}

class _AnimatedGestureState extends State<AnimatedGesture> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Animated & Gesture Detector",
          style: TextStyle(color: Colors.white, fontSize: 26),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {});
          },
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            width: 50.0 + random.nextInt(101),
            height: 50.0 + random.nextInt(101),
            color: Color.fromARGB(255, random.nextInt(256), random.nextInt(256),
                random.nextInt(256)),
          ),
        ),
      ),
    );
  }
}
