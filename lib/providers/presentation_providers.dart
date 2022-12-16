import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/components/appbar/appbar_notifier.dart';
import 'package:flutter_template/pages/setting/children/notification/notification_notifier.dart';
import 'package:geoflutterfire/geoflutterfire.dart';

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

///
/// location
///

final nearLocationProvider = StreamProvider((ref) {
  final db = FirebaseFirestore.instance;
  final geo = Geoflutterfire();
  GeoFirePoint center = geo.point(latitude: 15.960632, longitude: 77.641603);

  var collectionReference = db.collection('users');

  double radius = 0.1;
  String field = 'position';

  return geo.collection(collectionRef: collectionReference)
      .within(center: center, radius: radius, field: field, strictMode: true);
});