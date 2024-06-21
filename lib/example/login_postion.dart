import 'package:flutter/material.dart';

class ExampleLoginPage extends StatelessWidget {
  const ExampleLoginPage({super.key});

  double getSmallCircle(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;

  double getBigCircle(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
      body: Stack(
        children: [
          Positioned(
              top: -getSmallCircle(context) / 3,
              right: -getSmallCircle(context) / 3,
              child: Container(
                width: getSmallCircle(context),
                height: getSmallCircle(context),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                        colors: [Colors.amberAccent, Colors.redAccent],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
              )),
          Positioned(
              top: -getBigCircle(context) / 4,
              left: -getBigCircle(context) / 4,
              child: Container(
                width: getBigCircle(context),
                height: getBigCircle(context),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                        colors: [Colors.amberAccent, Colors.redAccent],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
                child: const Center(
                  child: Text(
                    "drebblee",
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: "fonts/Roboto",
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ),
              )),
          Positioned(
              bottom: -getBigCircle(context) / 2,
              right: -getBigCircle(context) / 2,
              child: Container(
                width: getBigCircle(context),
                height: getBigCircle(context),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                        colors: [Colors.redAccent, Colors.amberAccent],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
              )),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5)),
                  margin: const EdgeInsets.fromLTRB(20, 300, 20, 10),
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                  child: const Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.email,
                              color: Colors.redAccent,
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.redAccent)),
                            labelText: "Email: ",
                            labelStyle: TextStyle(color: Colors.redAccent)),
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.vpn_key,
                              color: Colors.redAccent,
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.redAccent)),
                            labelText: "Password: ",
                            labelStyle: TextStyle(color: Colors.redAccent)),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 20, 20),
                    child: InkWell(
                      child: const Text(
                        "FORGOT PASSWORD?",
                        style: TextStyle(color: Colors.redAccent, fontSize: 11),
                      ),
                      onTap: () {},
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 0, 20, 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: 40,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: const LinearGradient(
                                  colors: [
                                    Colors.redAccent,
                                    Colors.amberAccent
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter)),
                          child: Material(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(20),
                              child: const Center(
                                child: Text(
                                  "SIGN IN",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              onTap: () {},
                            ),
                          ),
                        ),
                      ),
                      FloatingActionButton(
                        onPressed: () {},
                        mini: true,
                        elevation: 0,
                        child: const Image(
                            image: AssetImage("assets/facebook.png")),
                      ),
                      FloatingActionButton(
                        onPressed: () {},
                        mini: true,
                        elevation: 0,
                        child: const Image(
                            image: AssetImage("assets/twitter.png")),
                      )
                    ],
                  ),
                ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "DON'T HAVE AN ACCOUNT? ",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 11,
                          fontWeight: FontWeight.w500),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        "SING UP",
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 11,
                            fontWeight: FontWeight.w700),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
