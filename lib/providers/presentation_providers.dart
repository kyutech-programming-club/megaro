import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/components/appbar/appbar_notifier.dart';
import 'package:flutter_template/pages/setting/children/notification/notification_notifier.dart';

///
/// appbar
///

/// appbarの日付
final appBarDateProvider =
    StateNotifierProvider<AppBarDateNotifier, DateTime>((ref) {
  return AppBarDateNotifier(ref);
});

/// textFormFieldの表示
final isAppbarTextFormField = StateProvider<bool>((ref) => false);

/// textFormFieldのフォーカス
final appBarTextFieldFocus = StateProvider<bool>((_) => false);

/// textFieldの状態
final exampleTextFieldProvider = StateProvider<String>((ref) => '');


/// スライダーの状態
final sliderValueProvider = StateProvider<int>((_) => 0);

///
/// top
///

final topTabIndexProvider = StateProvider<int>((_) => 0);

///
/// setting
///

final isSettingGetupTimeProvider = StateProvider<bool>((ref) => false);

final isNotificationProvider = StateNotifierProvider.family<IsNotificationNotifier, bool, String>(
      (ref, String key) => IsNotificationNotifier(ref, key),
);
