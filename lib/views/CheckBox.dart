import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckboxPage extends StatelessWidget {
  CheckboxPage({super.key});

  RxBool isChecked = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Obx(
          () => Checkbox(
            value: isChecked.value,
            onChanged: (bool? value) {
              if (value != null) {
                isChecked.value = value;
              }
            },
            side: BorderSide(color: Colors.white, width: 1),
            activeColor: Colors.blue,
          ),
        ),
      ),
    );
  }
}
