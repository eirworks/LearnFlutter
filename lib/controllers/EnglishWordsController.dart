
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:english_words/english_words.dart';
import 'package:lavide/helpers/Randomly.dart';

class EnglishWOrdsController extends GetxController {
  /*
  List with .obs doesn't require .value to access its object.
   */
  var items = List<String>.from([]).obs;

  void addWord() {
    final size = nouns.length;
    items.add(nouns[Randomly.randomNumberBetween(0, size)].toUpperCase());

    debugPrint(items.join(" | "));
  }

  void resetWords() {
    items.clear();
  }

  void removeItem(int index) {
    items.removeAt(index);
  }
}