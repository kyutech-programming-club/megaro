import 'package:flutter/material.dart';
import 'package:flutter_template/constants/color_constant.dart';

Future<DateTime?> datePick(BuildContext context) async {
  final now = new DateTime.now();
  final DateTime? newDate = await showDatePicker(
    context: context,
    initialDate: now,
    firstDate: DateTime(2020),
    lastDate: DateTime(2060),
    builder: (context, child) {
      return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: ColorScheme.light().copyWith(
              primary: ColorConstant.purple40,
            ),
          ),
          child: child!
      );
    },
  );
  return newDate;
}
