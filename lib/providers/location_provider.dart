import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:location/location.dart';

final locationStreamProvider = StreamProvider.autoDispose((ref) {
  final location = Location();
  // ignore: cascade_invocations
  location.enableBackgroundMode(enable: true);
  return location.onLocationChanged;
});