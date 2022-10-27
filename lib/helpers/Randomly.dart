import 'dart:math';

class Randomly {
  static int randomNumberBetween(int min, int max) {
    final r = Random();

    return min + r.nextInt((max - min) + 1);
  }
}