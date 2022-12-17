import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/data/firestore_data_source.dart';
import 'package:flutter_template/entity/chat/chat_entity.dart';
import '../../documents/chat_document/chat_document.dart';
import '../../providers/domain_providers.dart';
import '../../providers/infrastructure_providers.dart';
import '../../repositories/chat_repository.dart';

class MessageSendTestPage extends ConsumerWidget {
  const MessageSendTestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final strm = ref.read(firestoreProvider).getStreamChat();

    return Scaffold(
      body: Container(
        child: StreamBuilder(
          stream: strm,
          builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            // StreamControllerから流れてきたデータを使って再描画
            if (!snapshot.hasData) {
              return const Center(
                child: const CircularProgressIndicator(),
              );
            }
            if (snapshot.hasError) {
              return const Text('Something went wrong');
            }
            return ListView(
              children: snapshot.data!.docs.map((DocumentSnapshot document) {
                final data = document.data()! as Map<String, dynamic>;
                return Card(
                  child: ListTile(
                    title: Text('${data['message']}'),
                    onTap: () {

                    },
                  ),
                );
              }).toList(),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async{
          FirebaseMessaging messaging = FirebaseMessaging.instance;
          var userToken = await messaging.getToken();
          ref.read(chatRepositoryProvider).addChat(
              ChatEntity(
                  myToken: userToken!,
                  opponentToken: '',
                  message: 'a',
                  unread: 0,
                  updateAt: DateTime.now()
              ));
        },
      ),
    );
  }
}
