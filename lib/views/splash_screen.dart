import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/splashcontroller.dart';

class SplashScreen extends StatelessWidget {
   SplashScreen({super.key});

   // Controller initialize
  final controller= Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          height: 390,
          width: 320,
          child: Image.asset("assets/logoicon.png"),
        ),
      ),
    );
  }
}
