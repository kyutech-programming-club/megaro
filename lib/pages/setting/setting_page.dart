import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/entity/setting/setting_entity.dart';
import 'package:flutter_template/pages/setting/components/setting_item.dart';
import 'package:flutter_template/utils/context_extension.dart';

class SettingPage extends ConsumerWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<SettingEntity> items = [
      SettingEntity(
        title: context.l10n.notification,
        icon: Icons.notifications_outlined,
        desc: 'description',
        route: '/notification/:',
      ),
    ];
    return ListView(
      children: items
          .map(
            (e) => SettingItem(title: e.title, icon: e.icon,  route: e.route, desc: e.desc,),
          )
          .toList(),
    );
  }
}
