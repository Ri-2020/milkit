import 'package:get/get.dart';
import 'package:milkit/viewmodels/add_milk_vm.dart';

class AddMilkDindings extends Bindings {
  @override
  void dependencies() {
    Get.put(AddMilkVM());
  }
}
