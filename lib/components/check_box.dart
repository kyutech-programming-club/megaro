import 'package:flutter/material.dart';
import 'package:flutter_template/constants/color_constant.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({
    Key? key,
    required this.isSelected,
    this.onChanged,
  }) : super(key: key);
  final bool isSelected;
  final void Function(bool? value)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isSelected,
      activeColor: ColorConstant.green40,
      onChanged: onChanged,
    );
  }
}
