import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/documents/position_document/position_document.dart';
import 'package:flutter_template/entity/location/location_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_document.freezed.dart';

part 'location_document.g.dart';

@freezed
class LocationDocument with _$LocationDocument {
  const LocationDocument._();

  const factory LocationDocument({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'battery') required int battery,
    @JsonKey(name: 'position') required PositionDocument position,
  }) = _LocationDocument;

  factory LocationDocument.fromJson(Map<String, dynamic> json) =>
      _$LocationDocumentFromJson(json);

  static Future<LocationDocument> createDocument(
      LocationEntity locationEntity, Ref ref) async {
    return LocationDocument(
      name: locationEntity.name,
      battery: locationEntity.battery,
      position: PositionDocument(
        geoHash: locationEntity.hash,
        geoPoint: GeoPoint(locationEntity.lat, locationEntity.long),
      ),
    );
  }
}
