
import 'dart:async';
import 'package:get/get.dart';

import '../views/login_screen.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    navigateToLogin();
  }

  void navigateToLogin() {
    Timer(Duration(milliseconds: 700), () {
      Get.offAll(() => LoginScreen());
    });
  }
}