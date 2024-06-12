import 'package:flutter/material.dart';

class SpacerWidget extends StatelessWidget {
  const SpacerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Spacer Widget",
            style: TextStyle(
                fontSize: 26, fontWeight: FontWeight.w700, color: Colors.white),
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      color: Colors.green,
                    ),
                    Container(
                      width: 80,
                      height: 80,
                      color: Colors.red,
                    ),
                    Container(
                      width: 80,
                      height: 80,
                      color: Colors.orange,
                    ),
                  ],
                ),
              ),
             Container(
               padding: const EdgeInsets.all(2),
               child:  Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Container(
                     width: 80,
                     height: 80,
                     color: Colors.green,
                   ),
                   Container(
                     width: 80,
                     height: 80,
                     color: Colors.red,
                   ),
                   Container(
                     width: 80,
                     height: 80,
                     color: Colors.orange,
                   ),
                 ],
               ),
             ),
              Container(
                padding: const EdgeInsets.all(2),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      color: Colors.green,
                    ),
                    Container(
                      width: 80,
                      height: 80,
                      color: Colors.red,
                    ),
                    Container(
                      width: 80,
                      height: 80,
                      color: Colors.orange,
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(2),
                child:  Row(
                  children: [
                    const Spacer(flex: 1,),
                    Container(
                      width: 80,
                      height: 80,
                      color: Colors.green,
                    ),
                    const Spacer(flex: 2,),
                    Container(
                      width: 80,
                      height: 80,
                      color: Colors.red,
                    ),
                    const Spacer(flex: 3,),
                    Container(
                      width: 80,
                      height: 80,
                      color: Colors.orange,
                    ),
                    const Spacer(flex: 2,),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
