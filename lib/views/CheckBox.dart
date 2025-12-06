import 'package:buttomapp/Widgets/Custom_checkBox.dart';
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
        child: CustomCheckbox(isChecked: isChecked, activeColor: Colors.grey),
      ),
    );
  }
}
