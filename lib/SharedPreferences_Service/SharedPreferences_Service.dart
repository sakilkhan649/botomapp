
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageService extends GetxService {
  late SharedPreferences _prefs;

  Future<StorageService> init() async {
    _prefs = await SharedPreferences.getInstance();
    return this;
  }

  // First time check
  bool get isFirstTime => _prefs.getBool('isFirstTime') ?? true;
  Future<void> setFirstTime(bool value) async {
    await _prefs.setBool('isFirstTime', value);
  }

  // Login status
  bool get isLoggedIn => _prefs.getBool('isLoggedIn') ?? false;
  Future<void> setLoggedIn(bool value) async {
    await _prefs.setBool('isLoggedIn', value);
  }

  // User data
  String? get userId => _prefs.getString('userId');
  Future<void> setUserId(String value) async {
    await _prefs.setString('userId', value);
  }

  String? get userName => _prefs.getString('userName');
  Future<void> setUserName(String value) async {
    await _prefs.setString('userName', value);
  }

  String? get userEmail => _prefs.getString('userEmail');
  Future<void> setUserEmail(String value) async {
    await _prefs.setString('userEmail', value);
  }

  // Clear all data (for logout)
  Future<void> clearUserData() async {
    await _prefs.remove('userId');
    await _prefs.remove('userName');
    await _prefs.remove('userEmail');
    await _prefs.setBool('isLoggedIn', false);
  }
}