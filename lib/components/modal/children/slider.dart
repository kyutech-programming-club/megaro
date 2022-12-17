import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/constants/color_constant.dart';
import 'package:flutter_template/providers/presentation_providers.dart';
import 'package:flutter_template/utils/context_extension.dart';

class CustomSlider extends ConsumerWidget {
  const CustomSlider({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final day = ref.watch(appBarDateProvider);
    final sliderValue = ref.watch(sliderValueProvider);
    return Column(
      children: [
        Slider(
          activeColor: ColorConstant.green40,
          inactiveColor: ColorConstant.green90,
          value: sliderValue.toDouble(),
          max: 7,
          divisions: 7,
          onChanged: (double value) {},
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8, left: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for(var i = 0; i < 8; i++)
                Text(
                    "${day.add(Duration(days: i)).day.toString()}" + context.l10n.day,
                    style: TextStyle(
                      fontSize: 12,
                    ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
