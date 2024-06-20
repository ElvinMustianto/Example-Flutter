import 'package:flutter/material.dart';

class ExampleCustomCard extends StatelessWidget {
  const ExampleCustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Example Custom Card",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        backgroundColor: const Color(0xFF8C062F),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xFFFE5788), Color(0xFFF56D5D)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.7,
              child: Card(
                elevation: 10,
                child: Stack(
                  children: [
                    Opacity(
                      opacity: 0.7,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            image: const DecorationImage(
                                image: AssetImage("assets/leaves.png"),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4),
                              topRight: Radius.circular(4)),
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/sunset-3094078_960_720.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          20,
                          50 + MediaQuery.of(context).size.height * 0.35,
                          20,
                          20),
                      child: Center(
                        child: Column(
                          children: [
                            const Text(
                              "Beautiful Sunset at Paddy Field",
                              maxLines: 2,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 25, color: Color(0xFFF56D5D)),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Posted on ",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                  Text(
                                    "June 20, 2024",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xFFF56D5D)),
                                  )
                                ],
                              ),
                            ),
                            const Row(
                              children: [
                                Spacer(flex: 10,),
                                Icon(Icons.thumb_up, size: 18, color: Colors.grey,),
                                Spacer(flex: 1,),
                                Text("99", style: TextStyle(color: Colors.grey),),
                                Spacer(flex: 5,),
                                Icon(Icons.comment, size: 18, color: Colors.grey,),
                                Spacer(flex: 1,),
                                Text("888", style: TextStyle(color: Colors.grey),),
                                Spacer(flex: 10,)
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
