import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Example Image Widget",
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: Colors.white)),
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(3),
            height: 200,
            width: 200,
            color: Colors.black,
            child: const Image(
              image: AssetImage("assets/one piece.png"),
              // fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
