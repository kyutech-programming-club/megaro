import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/data/preferences_data_source.dart';
import 'package:flutter_template/providers/domain_providers.dart';

final settingRepositoryProvider =
    Provider<SettingRepository>((ref) => SettingRepository(ref: ref));

class SettingRepository {
  SettingRepository({required this.ref});

  final Ref ref;

  ///
  /// ExampleId
  ///

  Future<int> getTotalExampleId() async {
    final value = await ref.read(preferencesProvider).getInt(PrefKey.example.name);
    return value ?? 0;
  }

  Future<void> updateTotalExampleId(String key) async {
    final value = await ref.read(preferencesProvider).getInt(PrefKey.example.name);
    if (value == null) {
      await ref.read(preferencesProvider).setInt(key, 0);
      return;
    }
    await ref.read(preferencesProvider).setInt(key, value + 1);
  }

  ///
  /// Notification
  ///

  Future<void> updateIsNotification(String key, bool value) async {
    await ref.read(preferencesProvider).setBool(key, value);
  }

  Future<bool> getNotification(String key) async {
    final value = await ref.read(preferencesProvider).getBool(key);
    return value ?? true;
  }
}
