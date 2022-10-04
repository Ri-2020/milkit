import 'package:get/get.dart';
import 'package:milkit/utils/bindings/add_milk_bindings.dart';
import 'package:milkit/utils/bindings/daily_milk_bindings.dart';
import 'package:milkit/utils/bindings/milk_stats_bindings.dart';
import 'package:milkit/views/add_milk.dart';
import 'package:milkit/views/daily_milk_view.dart';
import 'package:milkit/views/milk_stats.dart';

class AppRoutes {
  static const homeScreenRoute = "/homescreenroute/";
  static const addMilkRoute = "/addmilkroute/";
  static const milkStatsRoute = "/milkstatsroute/";
  static const dailyMilkRoute = "/dailymilkroute/";

  static var pages = [
    GetPage(
      name: dailyMilkRoute,
      page: () => const DailyMilk(),
      binding: DailyMilkBindings(),
    ),
    GetPage(
      name: addMilkRoute,
      page: () => const AddMilk(),
      binding: AddMilkDindings(),
    ),
    GetPage(
      name: milkStatsRoute,
      page: () => const MilkStats(),
      binding: MilkStatsBindings(),
    ),
  ];
}
