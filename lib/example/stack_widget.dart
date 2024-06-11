import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Example Stack & Align",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body: Stack(
          children: [
            //Background
            Column(
              children: [
                Flexible(
                    flex: 1,
                    child: Row(
                      children: [
                        Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.white,
                            )),
                        Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.black12,
                            )),
                      ],
                    )),
                Flexible(
                    flex: 1,
                    child: Row(
                      children: [
                        Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.black12,
                            )),
                        Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.white,
                            )),
                      ],
                    )),
              ],
            ),
            //List view and text
            ListView(
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    "Ini adalah text yang ada pada lapisan tengah",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    "Ini adalah text yang ada pada lapisan tengah",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    "Ini adalah text yang ada pada lapisan tengah",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    "Ini adalah text yang ada pada lapisan tengah",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    "Ini adalah text yang ada pada lapisan tengah",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    "Ini adalah text yang ada pada lapisan tengah",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    "Ini adalah text yang ada pada lapisan tengah",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    "Ini adalah text yang ada pada lapisan tengah",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    "Ini adalah text yang ada pada lapisan tengah",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ],
            ),
            Align(
                alignment: const Alignment(0, 0.9),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.amber)),
                  child: const Text(
                    "My Button",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                ))
            //Button fix center
          ],
        ),
      ),
    );
  }
}
