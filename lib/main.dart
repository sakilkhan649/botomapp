import 'package:buttomapp/views/CheckBox.dart';
import 'package:buttomapp/views/Row_Redio_Button.dart';
import 'package:buttomapp/views/Row_dopdown_button.dart';
import 'package:buttomapp/views/dopdown_page.dart';
import 'package:buttomapp/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: RowDropdownButton(),
    );
  }
}
