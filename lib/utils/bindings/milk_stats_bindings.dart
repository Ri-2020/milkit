import 'package:get/get.dart';
import 'package:milkit/viewmodels/milk_stats_vm.dart';

class MilkStatsBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(MilkStatsVM());
  }
}
