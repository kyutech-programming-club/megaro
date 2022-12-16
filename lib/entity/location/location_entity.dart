import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_entity.freezed.dart';

@freezed
class LocationEntity with _$LocationEntity {
  const LocationEntity._();

  const factory LocationEntity({
    required String name,
    required String hash,
    required double lat,
    required double long,
  }) = _LocationEntity;

  static Future<LocationEntity> createEntity(WidgetRef ref) async {
    return LocationEntity(
      name: '',
      hash: '',
      lat: 0,
      long: 0,
    );
  }
}