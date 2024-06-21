import 'package:exampleflutter/example/custom_appbar.dart';
import 'package:exampleflutter/example/heroAnimation/page1.dart';
import 'package:exampleflutter/example/login_postion.dart';
import 'package:exampleflutter/example/tabbar.dart';
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
      home:ExampleTabBar(),
    );
  }
}

