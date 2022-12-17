import 'package:flutter_template/documents/location_document/location_document.dart';
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

  static LocationEntity fromDoc(LocationDocument locationDocument) {
    return LocationEntity(
      name: locationDocument.name,
      hash: locationDocument.position.geoHash,
      lat: locationDocument.position.geoPoint.latitude,
      long: locationDocument.position.geoPoint.longitude,
    );
  }
}