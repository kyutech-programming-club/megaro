import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/components/appbar_title.dart';
import 'package:flutter_template/components/check_box.dart';
import 'package:flutter_template/constants/color_constant.dart';
import 'package:flutter_template/constants/text_style_constant.dart';
import 'package:flutter_template/data/preferences_data_source.dart';
import 'package:flutter_template/providers/presentation_providers.dart';
import 'package:flutter_template/utils/context_extension.dart';

class NotificationPage extends ConsumerWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.green100,
        foregroundColor: ColorConstant.green0,
        elevation: 0.5,
        title: AppbarTitle(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 22, top: 16),
            child: Text(
              'description',
              style: TextStyleConstant.normal16,
            ),
          ),
          _Item(context.l10n.fifteenNotification, PrefKey.isFifteenNotification.name),
          _Item(context.l10n.thirtyNotification, PrefKey.isThirtyNotification.name),
          _Item(context.l10n.sixtyNotification, PrefKey.isSixtyNotification.name),
        ],
      ),
    );
  }
}

class _Item extends ConsumerWidget {
  const _Item(this.title, this.settingKey, {Key? key}) : super(key: key);
  final String title;
  final String settingKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(isNotificationProvider(settingKey));
    final notifier = ref.read(isNotificationProvider(settingKey).notifier);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
      child: InkWell(
        onTap: () => notifier.update(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title),
            CustomCheckBox(
              isSelected: value,
              onChanged: (bool? value) => notifier.update()
            ),
          ],
        ),
      ),
    );
  }
}
