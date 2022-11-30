import 'package:flutter/material.dart' as float_button;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/components/modal/modal.dart';
import 'package:flutter_template/constants/color_constant.dart';
import 'package:flutter_template/providers/presentation_providers.dart';

class FloatButton extends ConsumerWidget {
  const FloatButton({float_button.Key? key}) : super(key: key);

  @override
  float_button.Widget build(float_button.BuildContext context, WidgetRef ref) {
       return float_button.FloatingActionButton(
            onPressed: () {
              float_button.showModalBottomSheet(
                  shape: float_button.RoundedRectangleBorder(
                    borderRadius: float_button.BorderRadius.vertical(top: float_button.Radius.circular(8)),
                  ),
                  isScrollControlled: true,
                  context: context,
                  builder: (float_button.BuildContext context) {
                    return float_button.Padding(
                        padding: float_button.EdgeInsets.only(
                        bottom: float_button.MediaQuery.of(context).viewInsets.bottom,
                        ),
                      child: Modal(),
                    );
                  });
              ref
                  .watch(isAppbarTextFormField.notifier)
                  .update((state) => !state);
            },
            backgroundColor: ColorConstant.purple40,
            child: float_button.Icon(
              float_button.Icons.add,
              color: ColorConstant.black100,
            ),
          );
  }
}
