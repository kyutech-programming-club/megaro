import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/data/firestore_data_source.dart';
import 'package:flutter_template/entity/chat/chat_entity.dart';
import '../../providers/domain_providers.dart';
import '../../providers/infrastructure_providers.dart';
import '../../repositories/chat_repository.dart';

class MessageSendTestPage extends ConsumerWidget {
  const MessageSendTestPage({Key? key}) : super(key: key);

  ChatEntity? get chatEntity => null;

  Ref get ref {
    // TODO: implement _ref
    throw UnimplementedError();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chats = ref.watch(chatStreamProvider);
    return Scaffold(
      body: Column(
        children: chats.when(
            data: (data) {
              print(ref.read(firestoreProvider).getStreamChat());
              print("データ $data");
              return data.map((e) => Text(e.message)).toList();
            },
            error: (error, stackTrace) {
              return [];
            },
            loading: () {
              return [];
            }
        ),
      ),
      /*ElevatedButton(
        onPressed: () async {
          ref.read(chatRepositoryProvider).receiveChat();
          */ /*userToken = await _firebaseMessaging.getToken();
          ref.read(chatRepositoryProvider).addChat(
              ChatEntity(
                  myToken: userToken!,
                  opponentToken: '',
                  message: 'a',
                  unread: 0,
                  updateAt: DateTime.now()
              ));*/ /*
        },
        child: Container(
          color: Colors.blueGrey,
        ),
      ),*/
      /*floatingActionButton: FloatingActionButton(
        onPressed: () {
          _firebaseMessaging.getToken().then((String? token) {
            ref.read(tokenProvider.notifier).update((state) => token!);
            CollectionReference users =
                FirebaseFirestore.instance.collection('users');
            users.doc(token).set({
              'token': token,
            });
            print("トークン　$token");
          });
        },
      ),*/
    );
  }
}
