import 'package:flutter/material.dart';
import 'package:flutter_template/constants/color_constant.dart';

Future<TimeOfDay?> timePick(BuildContext context) async {
  final now = new DateTime.now();
  final TimeOfDay? newTime = await showTimePicker(
    builder: (context, child) {
      return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: ColorScheme.light().copyWith(
              primary: ColorConstant.green40,
            ),
          ),
          child: child!
      );
    },
    context: context,
    initialTime: TimeOfDay(hour: now.hour, minute: now.minute),
  );
  return newTime;
}
