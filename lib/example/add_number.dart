import 'package:flutter/material.dart';

class AddNumber extends StatefulWidget {
  const AddNumber({super.key});

  @override
  State<AddNumber> createState() => _AddNumberState();
}

class _AddNumberState extends State<AddNumber> {
  int number = 0;
  String kalimat = "Ini akan berubah";

  // void buttonAdd() {
  //   setState(() {
  //     number = number + 1;
  //   });
  // }

  // void kalimatAdd() {
  //   setState(() {
  //     kalimat = "saya juga lapar";
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Add Number",
            style: TextStyle(
                color: Colors.white,
                fontFamily: "Roboto",
                fontSize: 24,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline,
                decorationColor: Colors.white,
                decorationStyle: TextDecorationStyle.dashed,
                decorationThickness: 2),
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(kalimat),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      kalimat = "saya juga lapar";
                    });
                  },
                  child: const Text("Add Number"))
            ],
          ),
        ),
      ),
    );
  }
}
