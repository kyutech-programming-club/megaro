import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/utils/context_extension.dart';
import 'package:flutter_template/utils/date_time_extension.dart';
import '../providers/presentation_providers.dart';

class AppbarTitle extends ConsumerStatefulWidget {
  const AppbarTitle({Key? key}) : super(key: key);

  @override
  ConsumerState<AppbarTitle> createState() => _AppbarTitleState();
}

class _AppbarTitleState extends ConsumerState<AppbarTitle> {
  @override
  Widget build(BuildContext context) {
    final vm = ref.watch(appBarDateProvider.notifier);
    final today = ref.watch(appBarDateProvider);

    return Center(
              child: GestureDetector(
                onTap: () => vm.onChangeDate(context),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      today.M + context.l10n.mon + today.d + context.l10n.day,
                    ),
                  ],
                ),
              ),
            );
  }
}
