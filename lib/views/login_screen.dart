import 'package:buttomapp/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(
      children: [
        Center(child: Text("Login Screen")),
        ElevatedButton(onPressed: (){
          Get.offAll(() => HomeScreen());
        }, child: Text("click now"))
      ],
    ));
  }
}
