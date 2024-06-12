import 'dart:ui';

import 'package:flutter/material.dart';

class ExampleDraggable extends StatefulWidget {
  const ExampleDraggable({super.key});

  @override
  State<ExampleDraggable> createState() => _ExampleDraggableState();
}

class _ExampleDraggableState extends State<ExampleDraggable> {
  Color color1 = Colors.red;
  Color color2 = Colors.orange;
  late Color targetColor;
  bool isAccept = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Example Draggable",
            style: TextStyle(
                fontSize: 26, fontWeight: FontWeight.w700, color: Colors.white),
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Draggable<Color>(
                  data: color1,
                  childWhenDragging: const SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.black26,
                      shape: StadiumBorder(),
                    ),
                  ),
                  feedback: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color1.withOpacity(0.7),
                      shape: const StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color1,
                      shape: const StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                ),
                Draggable<Color>(
                  data: color2,
                  childWhenDragging: const SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.black26,
                      shape: StadiumBorder(),
                    ),
                  ),
                  feedback: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color2.withOpacity(0.7),
                      shape: const StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color2,
                      shape: const StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                )
              ],
            ),
            DragTarget<Color>(
              onWillAccept: (value) => true,
              onAccept: (value) {
                isAccept = true; targetColor = value;
              },
              builder: (context, candidates, rejected) {
                return (isAccept) ? SizedBox(
                  width: 100,
                  height: 100,
                  child: Material(
                    color: targetColor,
                    shape: const StadiumBorder(),
                  ),
                ) : const SizedBox(
                  width: 100,
                  height: 100,
                  child: Material(
                    color: Colors.black26,
                    shape: StadiumBorder(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
