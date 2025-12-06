import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomRadioTile<T> extends StatelessWidget {
  final String title;
  final T value;
  final Rx<T> groupValue;
  final Function(T)? onChanged;
  final Color? activeColor;
  final Widget? subtitle;

  const CustomRadioTile({
    Key? key,
    required this.title,
    required this.value,
    required this.groupValue,
    this.onChanged,
    this.activeColor,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => RadioListTile<T>(
      title: Text(title),
      subtitle: subtitle,
      value: value,
      groupValue: groupValue.value,
      activeColor: activeColor,
      onChanged: (T? newValue) {
        if (newValue != null) {
          groupValue.value = newValue;
          onChanged?.call(newValue);
        }
      },
    ));
  }
}