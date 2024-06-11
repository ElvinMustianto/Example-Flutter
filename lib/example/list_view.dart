import 'package:flutter/material.dart';

class ListViews extends StatefulWidget {
  const ListViews({super.key});

  @override
  State<ListViews> createState() => _ListViewsState();
}

class _ListViewsState extends State<ListViews> {
  int counter = 1;

  List<Widget> widgets = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "List View",
            style: TextStyle(
                color: Colors.white,
                fontFamily: "Roboto",
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.underline,
                decorationColor: Colors.white),
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body: ListView(
          padding: const EdgeInsets.only(top: 10),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        widgets.add(Text("Data Ke -$counter"));
                        counter++;
                      });
                    },
                    child: const Text("Add")),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        widgets.removeLast();
                        counter--;
                      });
                    },
                    child: const Text("Minus"))
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widgets,
            )
          ],
        ),
      ),
    );
  }
}
