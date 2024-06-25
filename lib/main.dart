import 'package:exampleflutter/example/app_bar.dart';
import 'package:exampleflutter/example/colorsButton/main_page.dart';
import 'package:exampleflutter/example/login_postion.dart';
import 'package:exampleflutter/example/qr_code.dart';
import 'package:exampleflutter/example/textField.dart';
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
      home:ExampleTextField(),
    );
  }
}

