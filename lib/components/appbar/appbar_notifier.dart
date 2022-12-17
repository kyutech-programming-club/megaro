import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/constants/color_constant.dart';

class AppBarDateNotifier extends StateNotifier<DateTime> {
  AppBarDateNotifier(this.ref) : super(new DateTime.now());
  final Ref ref;

  /// 日付を変更
  Future<void> onChangeDate(BuildContext context) async {
    final date = await showDatePicker(
      context: context,
      initialDate: state,
      firstDate: DateTime(2020),
      lastDate: DateTime(2060),
      builder: (context, child) {
        return Theme(
            data: ThemeData.light().copyWith(
              colorScheme: ColorScheme.light().copyWith(
                primary: ColorConstant.green40,
              ),
            ),
            child: child!);
      },
    );
    if (date == null) return;
    state = date;
  }
}
