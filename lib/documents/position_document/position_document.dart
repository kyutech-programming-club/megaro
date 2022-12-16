import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/entity/json_converter/geo_converter.dart';
import 'package:flutter_template/entity/location/location_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'position_document.freezed.dart';

part 'position_document.g.dart';

@freezed
class PositionDocument with _$PositionDocument {
  const PositionDocument._();

  const factory PositionDocument({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'geohash') required String geoHash,
    @GeoPointConverter() @JsonKey(name: 'geopoint') required GeoPoint geoPoint,
  }) = _PositionDocument;

  factory PositionDocument.fromJson(Map<String, dynamic> json) =>
      _$PositionDocumentFromJson(json);

  static Future<PositionDocument> createDocument(LocationEntity locationEntity, Ref ref) async {
    return PositionDocument(
      geoHash: locationEntity.hash,
      geoPoint: GeoPoint(locationEntity.lat, locationEntity.long),
    );
  }
}
