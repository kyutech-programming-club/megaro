// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'position_document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PositionDocument _$$_PositionDocumentFromJson(Map<String, dynamic> json) =>
    _$_PositionDocument(
      geoHash: json['geohash'] as String,
      geoPoint:
          const GeoPointConverter().fromJson(json['geopoint'] as GeoPoint),
    );

Map<String, dynamic> _$$_PositionDocumentToJson(_$_PositionDocument instance) =>
    <String, dynamic>{
      'geohash': instance.geoHash,
      'geopoint': const GeoPointConverter().toJson(instance.geoPoint),
    };
