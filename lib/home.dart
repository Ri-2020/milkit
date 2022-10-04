import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:milkit/utils/routes.dart';
import 'package:milkit/viewmodels/home_screen_vm.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenVM>(builder: (vm) {
      return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          enableFeedback: true,
          currentIndex: vm.currentIndex.value,
          onTap: (index) {
            vm.currentIndex.value = index;
            vm.update();
          },
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.spa_rounded),
              label: "Milks",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined),
              activeIcon: Icon(Icons.add_box),
              label: "Add",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.feed_sharp,
              ),
              label: "Stats",
            ),
          ],
        ),
        body: AppRoutes.pages[vm.currentIndex.value].page(),
      );
    });
  }
}
