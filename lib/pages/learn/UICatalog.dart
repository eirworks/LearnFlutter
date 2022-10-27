import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lavide/pages/ui_catalog/BottomNavBarUI.dart';
import 'package:lavide/pages/ui_catalog/ButtonUIs.dart';
import 'package:lavide/pages/ui_catalog/FormUIs.dart';
import 'package:lavide/pages/ui_catalog/TabBarUIs.dart';
import 'package:lavide/pages/ui_catalog/TextUIs.dart';

class UiCatalog extends StatelessWidget {
  UiCatalog({Key? key}) : super(key: key);

  final bottomNavController = Get.put(BottomNavController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "UI Catalog",
        ),
        actions: [
          IconButton(
              onPressed: () {
                Get.defaultDialog(
                    radius: 4,
                    actions: [
                      TextButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: const Text("I understand!"))
                    ],
                    title: "UI Catalog",
                    content: const Text(
                        "This is UI Catalog that list many (Material) UIs"));
              },
              icon: const Icon(
                Icons.help,
              ))
        ],
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListTile(
              leading: const Icon(Icons.help),
              title: const Text("What is this?"),
              onTap: () {
                Get.defaultDialog(
                  radius: 5,
                  title: "UI Catalog",
                  content: const Text(
                    "This is where all UIs are showcased, select a category below to see all themed UIs"
                  )
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.text_fields),
              title: const Text("Texts"),
              onTap: () {
                Get.to(TextUIs());
              },
            ),
            ListTile(
              leading: const Icon(Icons.smart_button),
              title: const Text("Buttons"),
              onTap: () {
                Get.to(ButtonUIs());
              },
            ),
            ListTile(
              leading: const Icon(Icons.input),
              title: const Text("Form"),
              onTap: () {
                Get.to(FormUIs());
              },
            ),
            ListTile(
              leading: const Icon(Icons.tab),
              title: const Text("Tab Bar"),
              onTap: () {
                Get.to(const TabBarUIs());
              },
            ),
            ListTile(
              leading: const Icon(Icons.navigation),
              title: const Text("Bottom Nav Bar"),
              onTap: () {
                bottomNavController.currentIdx.value = 0;
                Get.to(BottomNavBarUI());
              },
            ),
          ],
        ),
        margin: const EdgeInsets.all(10.0),
      ),
    );
  }
}
