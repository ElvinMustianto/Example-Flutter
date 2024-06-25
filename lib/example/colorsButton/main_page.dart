import 'package:flutter/material.dart';

import 'colors_button.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Example Colors Button",
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ColorsButton(
                mainColor: Colors.teal,
                secondColor: Colors.tealAccent,
                iconData: Icons.account_circle,
              ),
              ColorsButton(
                mainColor: Colors.red,
                secondColor: Colors.redAccent,
                iconData: Icons.account_circle_outlined,
              )
            ],
          ),
        ),
      ),
    );
  }
}
