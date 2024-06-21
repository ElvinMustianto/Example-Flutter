import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200),
        child: AppBar(
          backgroundColor: Colors.redAccent,
          flexibleSpace: Stack(
            children: [Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                margin: const EdgeInsets.all(20),
                child: const Text(
                  "Appbar with Custom Height",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ]
          ),
        ),
      ),
    );
  }
}
