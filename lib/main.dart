import 'package:exampleflutter/example/app_bar.dart';
import 'package:exampleflutter/example/multiplePage/login_page.dart';
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
      home:AppBarIcons(),
    );
  }
}

