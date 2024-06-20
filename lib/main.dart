import 'package:exampleflutter/example/login_postion.dart';
import 'package:exampleflutter/example/opacity.dart';
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
      home:ExampleLoginPage(),
    );
  }
}

