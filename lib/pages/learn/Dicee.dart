import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lavide/controllers/DiceController.dart';

import '../../components/NumberDice.dart';

class Dicee extends StatelessWidget {
  Dicee({Key? key}) : super(key: key);

  final diceController = Get.put(DiceController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        shadowColor: Colors.transparent,
        title: Text(
          "Dicee",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
            child: Row(
              children: [
                Expanded(
                    child: Obx(
                  () => NumberDice(
                    number: diceController.firstDice.value,
                  ),
                )),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                    child: Obx(
                  () => NumberDice(
                    number: diceController.secondDice.value,
                  ),
                )),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                elevation: MaterialStateProperty.all(0.0),
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(vertical: 20.0, horizontal: 35.0)),
                // side: MaterialStateProperty.all(
                //     BorderSide(color: Colors.red, width: 3.0))
              ),
              child: Text(
                "Roll",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () => diceController.rollDice(),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0),
            child: TextButton(
              child: Text(
                "Settings",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              onPressed: () {
                diceController.toggleConfig();
              },
            ),
          ),
          Obx(
            () => Visibility(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          diceController.decreaseNumber();
                        },
                        child: Icon(Icons.remove, color: Colors.white,)),
                    Obx(
                      () => Text(
                        diceController.numbers.value.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                        ),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          diceController.increaseNumbers();
                        },
                        child: Icon(Icons.add, color: Colors.white,)),
                  ],
                ),
              ),
              visible: diceController.showConfig.value,
            ),
          )
        ],
      ),
    );
  }
}
