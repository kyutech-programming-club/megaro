import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/components/modal/children/slider.dart';
import 'package:flutter_template/constants/color_constant.dart';
import 'package:flutter_template/constants/text_style_constant.dart';
import 'package:flutter_template/utils/context_extension.dart';
import 'package:flutter_template/utils/date_time_extension.dart';

class Modal extends ConsumerWidget {
  const Modal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final date = DateTime.now();
    return Container(
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
        color: ColorConstant.black100,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            TextFormField(
              textInputAction: TextInputAction.done,
              onFieldSubmitted: (String? value) async {
                Navigator.of(context).pop();
              },
              autofocus: true,
              cursorColor: ColorConstant.black0,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: ColorConstant.green40,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: ColorConstant.green40,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16, left: 8.0, right: 96),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () async {},
                        child: Text(
                          date.M +
                              context.l10n.mon +
                              date.d +
                              context.l10n.day,
                          style: TextStyleConstant.bold16,
                        ),
                      ),
                      GestureDetector(
                        onTap: () async {},
                        child: Text(
                          date.h +
                              context.l10n.hour +
                              date.m +
                              context.l10n.minutes,
                          style: TextStyleConstant.bold16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: CustomSlider(),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8, bottom: 24),
                  child: ElevatedButton(
                    child: Text(context.l10n.save),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorConstant.green40,
                      foregroundColor: ColorConstant.black100,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () async {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
