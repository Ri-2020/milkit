import 'package:get/get.dart';
import 'package:milkit/viewmodels/home_screen_vm.dart';

class HomePageBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeScreenVM());
  }
}
