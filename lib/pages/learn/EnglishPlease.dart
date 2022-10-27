import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lavide/controllers/EnglishWordsController.dart';

class EnglishPlease extends StatelessWidget {
  EnglishPlease({Key? key}) : super(key: key);

  final controller = Get.put(EnglishWOrdsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("It is only words"),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              controller.resetWords();
            },
          )
        ],
      ),
      body: Obx(() => Container(
            margin: const EdgeInsets.all(20.0),
            child: Stack(
              children: [
                Visibility(
                    visible: controller.items.isEmpty,
                    child: Center(
                      child: RichText(
                        text: const TextSpan(children: [
                          TextSpan(
                              text: "Tap ",
                              style: TextStyle(color: Colors.grey)),
                          WidgetSpan(child: Icon(Icons.add)),
                          TextSpan(
                              text: " to add a word",
                              style: TextStyle(color: Colors.grey))
                        ]),
                      ),
                    )),
                ListView.builder(
                    itemCount: controller.items.length,
                    itemBuilder: (_, index) => Card(
                          child: ListTile(
                            onLongPress: () {
                              controller.removeItem(index);
                            },
                            leading: Text("${index + 1}"),
                            title: Text(controller.items[index]),
                          ),
                        ))
              ],
            ),
          )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          if (controller.items.length < 10) {
            controller.addWord();
          }
        },
      ),
    );
  }
}
