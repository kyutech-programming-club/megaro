import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/data/firestore_data_source.dart';
import 'package:flutter_template/entity/chat/chat_entity.dart';

import '../documents/chat_document/chat_document.dart';

final chatRepositoryProvider =
Provider<ChatRepository>((ref) => ChatRepository(ref));

class ChatRepository {
  ChatRepository(this.ref);

  final Ref ref;

  /// 投稿新規追加
  Future<void> addChat(ChatEntity chatEntity) async {
    final firestore = ref.read(firestoreProvider);
    final chatDoc =
    await ChatDocument.createDocument(chatEntity, ref);
    await firestore.insertChat(chatDoc);
  }
}
