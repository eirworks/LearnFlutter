import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../theme/MerryTheme.dart';
import '../BottomNavBarUI.dart';

class NavHomePage extends StatelessWidget {
  NavHomePage({Key? key}) : super(key: key);
  final BottomNavController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          if (pow(2, controller.posts.length) < 100000) {
            controller.addPost("Title",
                "Hello, this content ${pow(2, controller.posts.length)}",
                author: "Hello");
          } else {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.warning,
                      color: Colors.white,
                    ),
                  ),
                  Text("You cannot add anymore item!")
                ],
              ),
            ));
          }
        },
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      child: OutlinedButton(
                    onPressed: () {
                      controller.resetPost();
                    },
                    child: Text("Reset"),
                  )),
                  Expanded(
                    child: Obx(
                      () => Text(
                        "Items: ${controller.posts.length}",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
                child: Obx(() => Stack(
                      children: [
                        Visibility(
                          child: Center(
                            child: Text(
                              "No item",
                              style: MerryTheme.mutedTextStyle,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          visible: controller.posts.isEmpty,
                        ),
                        ListView.builder(
                            itemCount: controller.posts.length,
                            itemBuilder: (_, index) => Card(
                                  child: ListTile(
                                    leading: Text(
                                      "#${index + 1}",
                                      style: const TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    title: Text(controller.posts[index].title),
                                    subtitle:
                                        Text(controller.posts[index].content),
                                  ),
                                ))
                      ],
                    )))
          ],
        ),
      ),
    );
  }
}
