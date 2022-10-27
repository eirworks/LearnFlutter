import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lavide/pages/MainPage.dart';
import 'package:lavide/theme/MerryTheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Le Vide',
      theme: MerryTheme.themeData,
      home: MainPage(),
    );
  }
}
