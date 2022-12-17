import 'package:flutter_template/documents/chat_document/chat_document.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'chat_entity.freezed.dart';

@freezed
class ChatEntity with _$ChatEntity {
  const ChatEntity._();

  const factory ChatEntity({
    required String myToken,
    required String opponentToken,
    required String message,
    required int unread,
    required DateTime updateAt
  }) = _ChatEntity;

  static ChatEntity fromDoc(ChatDocument chatDocument) {
    return ChatEntity(
      myToken: chatDocument.myToken,
        opponentToken: chatDocument.opponentToken,
        message: chatDocument.message,
        unread: chatDocument.unread,
        updateAt: chatDocument.updateAt,
    );
  }
}