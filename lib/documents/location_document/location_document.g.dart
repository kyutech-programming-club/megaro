// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocationDocument _$$_LocationDocumentFromJson(Map<String, dynamic> json) =>
    _$_LocationDocument(
      name: json['name'] as String,
      battery: json['battery'] as int,
      position:
          PositionDocument.fromJson(json['position'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LocationDocumentToJson(_$_LocationDocument instance) =>
    <String, dynamic>{
      'name': instance.name,
      'battery': instance.battery,
      'position': instance.position,
    };
