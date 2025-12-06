import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDropdown<T> extends StatelessWidget {
  final String hint;
  final Rx<T?> value;
  final List<T> items;
  final String Function(T) getLabel;
  final Function(T?)? onChanged;
  final Color? dropdownColor;
  final Color? textColor;
  final double? fontSize;
  final bool isExpanded;

  const CustomDropdown({
    Key? key,
    required this.hint,
    required this.value,
    required this.items,
    required this.getLabel,
    this.onChanged,
    this.dropdownColor,
    this.textColor,
    this.fontSize,
    this.isExpanded = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => DropdownButton<T>(
      hint: Text(
        hint,
        style: TextStyle(
          fontSize: fontSize ?? 20,
          color: textColor ?? Colors.black,
        ),
      ),
      style: TextStyle(
        fontSize: fontSize ?? 20,
        color: textColor ?? Colors.black,
      ),
      value: value.value,
      isExpanded: isExpanded,
      dropdownColor: dropdownColor ?? Colors.green,
      icon: Icon(Icons.keyboard_arrow_down),
      items: items.map((item) {
        return DropdownMenuItem<T>(
          value: item,
          child: Text(getLabel(item)),
        );
      }).toList(),
      onChanged: (T? newValue) {
        if (newValue != null) {
          value.value = newValue;
          onChanged?.call(newValue);
        }
      },
    ));
  }
}