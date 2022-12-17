// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatDocument _$$_ChatDocumentFromJson(Map<String, dynamic> json) =>
    _$_ChatDocument(
      myToken: json['myToken'] as String,
      opponentToken: json['opponentToken'] as String,
      message: json['message'] as String,
      unread: json['unread'] as int,
      updateAt:
          const TimestampConverter().fromJson(json['updateAt'] as Timestamp),
    );

Map<String, dynamic> _$$_ChatDocumentToJson(_$_ChatDocument instance) =>
    <String, dynamic>{
      'myToken': instance.myToken,
      'opponentToken': instance.opponentToken,
      'message': instance.message,
      'unread': instance.unread,
      'updateAt': const TimestampConverter().toJson(instance.updateAt),
    };
