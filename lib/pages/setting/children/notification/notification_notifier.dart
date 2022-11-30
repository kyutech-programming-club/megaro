import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/repositories/setting_repository.dart';

class IsNotificationNotifier extends StateNotifier<bool> {
  IsNotificationNotifier(this.ref, this.key) : super(true);

  final Ref ref;
  final String key;

  bool get value => state;

  Future<void> initialize() async {
    final value =
    await ref.read(settingRepositoryProvider).getNotification(key);
    state = value;
  }

  Future<void> update() async {
    state = !state;
    await ref.read(settingRepositoryProvider).updateIsNotification(key, state);
  }
}
