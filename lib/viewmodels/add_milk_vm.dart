import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:milkit/models/milk_card_model.dart';
import 'package:milkit/utils/sharedPreferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddMilkVM extends GetxController {
  var milkAmount = "".obs;
  var milkPrice = "".obs;
  var milkList = [].obs;

  // text controllers
  TextEditingController milkAmountController = TextEditingController();
  TextEditingController milkPriceController = TextEditingController();

  @override
  void onInit() async {
    getData();
    super.onInit();
  }

  void getData() async {
    milkAmount.value =
        SharedPreference.getString(SharedPreference.milkAmount).toString();
    milkAmount.value =
        SharedPreference.getString(SharedPreference.milkPrice).toString();
    milkList.value =
        SharedPreference.getformAddInfoList(SharedPreference.milkList)
            .map((e) => MilkModel.fromMap(e))
            .toList();
  }
}
