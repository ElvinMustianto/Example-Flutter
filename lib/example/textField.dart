import 'package:flutter/material.dart';

class ExampleTextField extends StatefulWidget {
  const ExampleTextField({super.key});

  @override
  State<ExampleTextField> createState() => _ExampleTextFieldState();
}

class _ExampleTextFieldState extends State<ExampleTextField> {
  TextEditingController exampleText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Example Text Field",
          style: TextStyle(
              fontSize: 26, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Card(
              margin: const EdgeInsets.all(5),
              child: TextField(
                decoration: InputDecoration(
                  label: const Text(
                    "Email",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  prefixIcon: const Icon(
                    Icons.mail,
                    color: Colors.purple,
                  ),
                  hintText: "Email...",
                  hintStyle:
                      const TextStyle(fontSize: 18, color: Colors.purple),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onChanged: (value) {
                  setState(() {});
                },
                controller: exampleText,
              ),
            ),
            Text(exampleText.text)
          ],
        ),
      ),
    );
  }
}
