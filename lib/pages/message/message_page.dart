import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/constants/color_constant.dart';
import 'package:flutter_template/entity/chat/chat_entity.dart';
import 'package:flutter_template/providers/infrastructure_providers.dart';
import 'package:flutter_template/repositories/chat_repository.dart';
import 'package:go_router/go_router.dart';

class MessagePage extends ConsumerWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final myChat = ref.watch(chatMyStreamProvider);
    final oppChat = ref.watch(chatOppStreamProvider);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(chatRepositoryProvider).addChat(ChatEntity(
              myToken:
                  "d8u38RriToiLqqpun5j1JD:APA91bE2zcWxM0W5kA4K9gGTgnkpWI6kT_GEP5Oid5kghQ3UWuoMsQtT_Y1FHJLJrNeGatXDuMaZdUZnvhbLgVMqPGhF9NAhy590-wuDIpZcXikiY4S85sKLSRdjayyj775xL6paGw-o",
              opponentToken: "a",
              message: "aaaa",
              unread: 0,
              updateAt: DateTime.now()));
        },
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorConstant.black100,
        foregroundColor: ColorConstant.green40,
      ),
      body: SafeArea(
        child: Container(
          color: ColorConstant.black100,
          padding: EdgeInsets.all(8),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: myChat.when(
            data: (my) {
              return oppChat.when(
                data: (opp) {
                  return ListView.builder(
                    itemCount: my.length + opp.length,
                    itemBuilder: (BuildContext context, int index) {
                      final chats = [...my, ...opp];
                      chats.sort((a, b){ //sorting in descending order
                        return b.updateAt.compareTo(a.updateAt);
                      });
                      final chat = chats[index];
                      return ListTile(
                        onTap: () => context.push('/message_page/talk_page/:', extra: chat.opponentToken),
                        leading: CircleAvatar(),
                        trailing: Text(chat.message),
                        title: Text(chat.message),
                      );
                    },
                  );
                },
                error: (error, stackTrace) {
                  return Text(error.toString());
                },
                loading: () {
                  return Center(child: CircularProgressIndicator());
                },
              );
            },
            error: (error, stackTrace) {
              return Text(error.toString());
            },
            loading: () {
              return Column(
                children: [
                  Text('loading...'),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
