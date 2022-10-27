import 'dart:math';

import 'package:get/get.dart';

class DiceController extends GetxController {
  var firstDice = 1.obs;
  var secondDice = 1.obs;

  var numbers = 6.obs;

  static const int MAX = 99;
  static const int MIN = 2;


  // UI states
  var showConfig = false.obs;

  void rollDice() {
    final rand = Random();

    const min = 1;
    final max = numbers.value;

    firstDice.value = (min + rand.nextInt((max - min) + 1));
    secondDice.value = (min + rand.nextInt((max - min) + 1));
  }

  void toggleConfig() {
    showConfig.value = !showConfig.value;
  }

  void increaseNumbers() {
    if (numbers.value < MAX) {
      numbers.value++;
    }

    rollDice();
  }

  void decreaseNumber() {
    if (numbers.value > MIN) {
      numbers.value--;
    }

    rollDice();
  }
}