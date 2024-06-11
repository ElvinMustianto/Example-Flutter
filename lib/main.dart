import 'package:exampleflutter/example/animated_gesture.dart';
import 'package:exampleflutter/example/flexible_layout.dart';
import 'package:exampleflutter/example/list_view.dart';
import 'package:exampleflutter/example/stack_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title:"Latihan Flutter",
      debugShowCheckedModeBanner: false,
      home:StackWidget(),
    );
  }
}

