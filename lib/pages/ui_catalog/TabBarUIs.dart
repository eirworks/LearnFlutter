import 'package:flutter/material.dart';

class TabBarUIs extends StatelessWidget {
  const TabBarUIs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: BackButton(),
            title: const Text("The Tab Bar"),
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: "Home",
                ),
                Tab(
                  text: "Orders",
                ),
                Tab(
                  text: "Profile",
                  icon: Icon(Icons.person),
                )
              ],
            ),
          ),
          body: const TabBarView(

            children: [
              Center(
                child: Text("Welcome home"),
              ),
              Center(
                child: Text("You don't have any order"),
              ),
              Center(
                child: Text("Profile"),
              )
            ],
          ),
        ));
  }
}
