import 'package:get_storage/get_storage.dart';

class SharedPreference {
  static var myPrefs = GetStorage();

  static const milkAmount = "milkAmount";
  static const milkPrice = "milkPrice";
  static const milkList = "milkList";

  static void setString(String key, String value) {
    myPrefs.write(key, value);
  }

  static String? getString(String key) {
    return myPrefs.read(key);
  }

  static void setInt(String key, int value) {
    myPrefs.write(key, value);
  }

  static int getInt(String key) {
    return myPrefs.read(key) ?? -1;
  }

  static void setBool(String key, bool value) {
    myPrefs.write(key, value);
  }

  static bool getBool(String key) {
    return myPrefs.read(key) ?? false;
  }

  static void setformAddInfoList(String key, List<Map<String, dynamic>> data) {
    myPrefs.write(key, data);
  }

  static List<Map<String, dynamic>> getformAddInfoList(String key) {
    return myPrefs.read(key);
  }

  static Future<void> clearSharedPrefs() async {
    await myPrefs.erase();
  }
}
