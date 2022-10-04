import 'package:get/get.dart';
import 'package:milkit/viewmodels/daily_milk_vm.dart';

class DailyMilkBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(DailyMilkVM());
  }
}
