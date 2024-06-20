import 'package:flutter/material.dart';

class ExampleMediaQuery extends StatelessWidget {
  const ExampleMediaQuery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Example Medoa Query",
          style: TextStyle(
              fontSize: 26, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body:(MediaQuery.of(context).orientation == Orientation.portrait) ? Column(
        children: generateContainers(),
      ): Row(
        children: generateContainers(),
      )
    );
  }
}

List<Widget> generateContainers() {
  return <Widget>[
  Container(height: 100, width: 100, color: Colors.green,),
  Container(height: 100, width: 100, color: Colors.blue,),
  Container(height: 100, width: 100, color: Colors.red,)
  ];
}

