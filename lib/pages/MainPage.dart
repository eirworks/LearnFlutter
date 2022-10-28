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
      appBar: AppBar(
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person_rounded,
                color: Colors.grey[800],
                size: 36,
              ),
            )
          ],
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          leading: const FlutterLogo(
            size: 16,
          ),
          title: Column(
            children: [
              Text(
                "Flutter Daily",
                style: TextStyle(
                    fontFamily: "Playfair",
                    fontSize: 25.0,
                    color: Colors.grey[800],
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "Learn Flutter once a day",
                style: TextStyle(
                    fontFamily: "Playfair",
                    fontStyle: FontStyle.italic,
                    color: Colors.grey.shade700),
              ),
            ],
          )),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MenuListItem(
              title: "Hello World",
              description: "Basic Hello World text in the center of page",
              onTap: () => Get.to(const HelloWorld()),
            ),
            MenuListItem(
              title: "Business Card",
              description:
                  "Simple business card with Copy/Clipboard, Column, Row, Snackbar",
              onTap: () => Get.to(const BusinessCard()),
            ),
            MenuListItem(
              title: "Dicee",
              description: "Dice rolling app to display 2 6-faced dies.",
              onTap: () => Get.to(Dicee()),
            ),
            MenuListItem(
              title: "Not My Word",
              description: "List of dynamic items",
              onTap: () {
                words.resetWords();
                Get.to(EnglishPlease());
              },
            ),
            MenuListItem(
              title: "UI Catalog",
              description: "List of UIs",
              onTap: () {
                Get.to(UiCatalog());
              },
            ),
            MenuListItem(
              title: "Settings and Preferences",
              description: "Shared preferences and settings look",
              onTap: () {
                debugPrint("Feature not available yet!");
              },
            ),
            MenuListItem(
              title: "API Call",
              description: "Learn on how to call API",
              onTap: () {
                Get.to(LearnApi());
              },
            ),
          ],
        ),
      ),
    );
  }
}
