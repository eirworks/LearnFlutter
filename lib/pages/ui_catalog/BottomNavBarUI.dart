import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavBarUI extends StatelessWidget {
  BottomNavBarUI({Key? key}) : super(key: key);

  final bottomNavController = Get.put(BottomNavController());

  static Widget getWidget(BuildContext ctx, position) {
    List widgets = [
      SingleChildScrollView(
        child: Column(
          children: [
            Text("Hello World", style: Theme.of(ctx).textTheme.bodyText2,),
            Text("Hello World"),
          ],
        ),
      ),
      Center(
        child: Text("Page 2"),
      ),
      Center(
        child: Text("Profile Page"),
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
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Shopping Cart",),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile",),
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

  @override
  void onInit() {
    debugPrint("BottomNavController initiated");
  }
}