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
        title: const Text("Form UIs"),
      ),
      backgroundColor: Colors.grey[200],
      body: Container(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              children: [
                SizedBox(
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
                  padding: const EdgeInsets.all(10),
                  child: Obx(() => Text(
                      "Selected value = ${controller.selectedDropdown.value}")),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: const [
                      CircularProgressIndicator(
                        value: null,
                      ),
                      Text(
                        "Please wait",
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: const TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(),
                      labelText: "Full Name",
                      helperText:
                          "Your first name, middle name (if any), and last name.",
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: const TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(),
                      labelText: "Email Address",
                      suffixText: "@gmail.com",
                      errorText: null,
                      helperText: "Your email address",
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: const TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      prefix: Text("@"),
                      border: OutlineInputBorder(),
                      labelText: "Twitter",
                      errorText: null,
                      helperText: "Your Twitter username without the @.",
                    ),
                  ),
                ),
                Checkbox(
                  value: false,
                  onChanged: (value) {},
                ),
                CheckboxListTile(
                  value: true,
                  onChanged: (value) {},
                  title: const Text("An option"),
                  controlAffinity: ListTileControlAffinity.leading,
                ),
                Radio(value: false, groupValue: false, onChanged: (value) {}),
                RadioListTile(
                  value: false,
                  groupValue: false,
                  onChanged: (value) {},
                  title: const Text("Enable something?"),
                  subtitle: const Text(
                      "Something will happened everytime you enter this page."),
                ),
                Switch(value: false, onChanged: (value) {}),
                SwitchListTile(
                  value: false,
                  onChanged: (value) {},
                  title: const Text("Enable something else?"),
                  subtitle: const Text(
                      "Will do something else anytime you enter this page."),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: ElevatedButton(
                    child: const Text("Submit"),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
