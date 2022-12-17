import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_entity.freezed.dart';

@freezed
class MessageEntity with _$MessageEntity {
  const MessageEntity._();

  const factory MessageEntity({
    required String text,
    required bool isMy,
  }) = _MessageEntity;

  // static MessageEntity fromDoc(LocationDocument locationDocument) {
  //   return MessageEntity(
  //     text: locationDocument.name,
  //     isMy: locationDocument.,
  //   );
  }