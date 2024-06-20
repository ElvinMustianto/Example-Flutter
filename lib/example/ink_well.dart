import 'package:flutter/material.dart';

class ExampleInkWell extends StatelessWidget {
  const ExampleInkWell({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Example Custom Button",
            style: TextStyle(
                fontSize: 26, fontWeight: FontWeight.w600, color: Colors.white),
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.amber)),
                child: const Text(
                  "Elevated Button",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 12),
                ),
              ),
              // Custom Button
              CustomButton()
            ],
          ),
        ));
  }

  Material CustomButton() {
    return Material(
      borderRadius: BorderRadius.circular(20),
      elevation: 2,
      child: Container(
        width: 130,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(
                colors: [Colors.cyan, Colors.pink],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: Material(
          borderRadius: BorderRadius.circular(20),
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(20),
            splashColor: Colors.amber,
            onTap: () {},
            child: const Center(
              child: Text(
                "Custom Button",
                style:
                    TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
