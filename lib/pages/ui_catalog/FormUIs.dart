import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lavide/controllers/FormUIController.dart';

class FormUIs extends StatelessWidget {
  FormUIs({Key? key}) : super(key: key);

  final controller = Get.put(FormUIController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Form UIs"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                child: Obx(() => DropdownButton(
                    value: controller.selectedDropdown.value,
                    items: const [
                      DropdownMenuItem<String>(
                        child: Text("Indonesia"),
                        value: "Indonesia",
                      ),
                      DropdownMenuItem(
                        child: Text("Malaysia"),
                        value: "Malaysia",
                      ),
                    ],
                    onChanged: (str) {
                      controller.selectedDropdown.value = str.toString();
                      Get.snackbar('Hello', "You selected $str",
                          snackPosition: SnackPosition.BOTTOM,
                          backgroundColor: Colors.grey[800],
                          colorText: Colors.white);
                    })),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Obx(() => Text(
                    "Selected value = ${controller.selectedDropdown.value}")),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: const [
                    CircularProgressIndicator(
                      value: null,
                    ),
                    Text("Please wait", textAlign: TextAlign.center,)
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
