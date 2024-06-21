import 'package:flutter/material.dart';

class ExampleTabBar extends StatelessWidget {
  const ExampleTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Example TabBar", style: TextStyle(color: Colors.white),),
            backgroundColor: Colors.blueAccent,
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.comment, color: Colors.white,),
                  child: Text("Comments", style: TextStyle(color: Colors.white),),
                ),
                Tab(
                  icon: Icon(Icons.home, color: Colors.white,),
                  child: Text("Home", style: TextStyle(color: Colors.white),),
                ),
                Tab(
                  icon: Icon(Icons.contact_page, color: Colors.white,),
                  child: Text("Contact", style: TextStyle(color: Colors.white),),
                ),
                Tab(
                  icon: Icon(Icons.account_box, color: Colors.white,),
                  child: Text("Account", style: TextStyle(color: Colors.white),),
                )
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Center(
                child: Text("Tab 1"),
              ),
              Center(
                child: Text("Tab 2"),
              ),
              Center(
                child: Text("Tab 3"),
              ),
              Center(
                child: Text("Tab 4"),
              ),
            ],
          ),
        )
    );
  }
}
