import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lavide/data/Post.dart';
import 'package:lavide/pages/ui_catalog/bottom_nav_pages/NavHomePage.dart';

class BottomNavBarUI extends StatelessWidget {
  BottomNavBarUI({Key? key}) : super(key: key);

  final bottomNavController = Get.put(BottomNavController());

  static Widget getWidget(BuildContext ctx, position) {
    List widgets = [
      NavHomePage(),
      Center(
        child: Text(
          "Page 2",
          style: Theme.of(ctx).textTheme.headline2,
        ),
      ),
      Center(
        child: Text(
          "Profile Page",
          style: Theme.of(ctx).textTheme.headline2,
        ),
      ),
    ];

    return widgets[position];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Bottom Navigation Bar"),
      ),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: "Shopping Cart",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
              ),
            ],
            currentIndex: bottomNavController.currentIdx.value,
            onTap: (idx) {
              bottomNavController.currentIdx.value = idx;
            },
          )),
      body: Obx(() => getWidget(context, bottomNavController.currentIdx.value)),
    );
  }
}

class BottomNavController extends GetxController {
  var currentIdx = 0.obs;

  /// Be careful with list as observable. DO NOT EVER FORGET TO USE .obs!!!
  var posts = [].obs;

  void addPost(String title, String content, {String author = "admin"}) {
    posts.add(Post(title, content, author: author));
    debugPrint(posts.length.toString());
  }

  void resetPost() {
    posts.clear();
    debugPrint(posts.length.toString());
  }

  @override
  void onInit() {
    debugPrint("BottomNavController initiated");
  }
}
