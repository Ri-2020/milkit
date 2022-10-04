// ignore_for_file: implementation_imports

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:milkit/viewmodels/daily_milk_vm.dart';

class DailyMilk extends StatelessWidget {
  const DailyMilk({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DailyMilkVM>(builder: (vm) {
      return Container();
    });
  }
}
