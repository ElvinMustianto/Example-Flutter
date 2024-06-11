import 'package:flutter/material.dart';

class FlexibleLayouts extends StatelessWidget {
  const FlexibleLayouts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flexible Layouts"),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 26),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: <Widget>[
          Flexible(
              child: Row(
            children: <Widget>[
              Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.orange,
                  )),
              Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.white,
                  )),
              Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.red,
                  )),
            ],
          )),
          Flexible(
            flex: 2,
            child: Container(
              color: Colors.pink,
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.purple,
            ),
          ),
        ],
      ),
    );
  }
}
