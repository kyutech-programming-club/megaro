import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/entity/chat/chat_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../entity/json_converter/timestamp_converter.dart';

part 'chat_document.freezed.dart';

part 'chat_document.g.dart';

@freezed
class ChatDocument with _$ChatDocument {
  const ChatDocument._();

  const factory ChatDocument({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'myToken') required String myToken,
    @JsonKey(name: 'opponentToken') required String opponentToken,
    @JsonKey(name: 'message') required String message,
    @JsonKey(name: 'unread') required int unread,
    @TimestampConverter() @JsonKey(name: 'updateAt') required DateTime updateAt,
  }) = _ChatDocument;

  factory ChatDocument.fromJson(Map<String, dynamic> json) =>
      _$ChatDocumentFromJson(json);

  static Future<ChatDocument> createDocument(ChatEntity chatEntity, Ref ref) async {
    return ChatDocument(
      myToken: chatEntity.myToken,
      opponentToken: chatEntity.opponentToken,
      message: chatEntity.message,
      unread: chatEntity.unread,
      updateAt: chatEntity.updateAt,
    );
  }
}
