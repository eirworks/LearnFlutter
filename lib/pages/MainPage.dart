import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lavide/controllers/EnglishWordsController.dart';
import 'package:lavide/pages/basics/HelloWorld.dart';
import 'package:lavide/pages/learn/BusinessCard.dart';
import 'package:lavide/pages/learn/EnglishPlease.dart';
import 'package:lavide/pages/learn/LearnApi.dart';
import 'package:lavide/pages/learn/UICatalog.dart';

import '../components/MenuListItem.dart';
import 'learn/Dicee.dart';

class MainPage extends StatelessWidget {

  MainPage({Key? key}) : super(key: key);

  final words = Get.put(EnglishWOrdsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.book,
                    size: 40.0,
                  ),
                  const SizedBox( width: 10.0,),
                  Expanded(
                    child: Column(
                      children: [
                        const Text(
                          "Flutter Daily",
                          style: TextStyle(fontFamily: "Playfair", fontSize: 25.0),
                        ),
                        Text(
                          "Learn Flutter once a day",
                          style: TextStyle(fontFamily: "Playfair", fontStyle: FontStyle.italic, color: Colors.grey.shade700),
                        ),
                      ],
                    ),
                  ),
                  TextButton(onPressed: () {}, child: Text("Subscribe", style: const TextStyle(color: Colors.teal),))
                ],
              ),
            ),
          ),
          MenuListItem(
            title: "Hello World",
            description: "Basic Hello World text in the center of page",
            onTap: () => Get.to(HelloWorld()),
          ),
          MenuListItem(
            title: "Business Card",
            description:
                "Simple business card with Copy/Clipboard, Column, Row, Snackbar",
            onTap: () => Get.to(BusinessCard()),
          ),
          MenuListItem(
            title: "Dicee",
            description:
                "Dice rolling app to display 2 6-faced dies.",
            onTap: () => Get.to(Dicee()),
          ),
          MenuListItem(
            title: "Not My Word",
            description:
                "List of dynamic items",
            onTap: () {
              words.resetWords();
              Get.to(EnglishPlease());
            },
          ),
          MenuListItem(
            title: "UI Catalog",
            description:
                "List of UIs",
            onTap: () {
              Get.to(UiCatalog());
            },
          ),
          MenuListItem(
            title: "Settings and Preferences",
            description:
                "Shared preferences and settings look",
            onTap: () {
              print("Feature not available yet!");
            },
          ),
          MenuListItem(
            title: "API Call",
            description:
                "Learn on how to call API",
            onTap: () {
              Get.to(LearnApi());
            },
          ),
        ],
      ),
    );
  }
}
