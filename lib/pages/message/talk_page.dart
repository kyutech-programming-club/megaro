import 'package:flutter/material.dart';
import 'package:flutter_template/constants/color_constant.dart';
import 'package:flutter_template/entity/message/message_entity.dart';
import 'package:flutter_template/pages/message/children/receive_message_bubble.dart';
import 'package:flutter_template/pages/message/children/send_message_bubble.dart';

class TalkPage extends StatelessWidget {
  const TalkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final messages = [MessageEntity(text: "aaaa", isMy: true),MessageEntity(text: "eeee", isMy: false)];
    return Scaffold(
      backgroundColor: ColorConstant.black100,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorConstant.black100,
        foregroundColor: ColorConstant.purple40,
        title: Text('aaa'),
      ),
      body: SafeArea(
        child: Container(
          color: ColorConstant.black100,
          padding: EdgeInsets.all(8),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            itemCount: messages.length,
            itemBuilder: (BuildContext context, int index) {
              final message=messages[index];
              if (message.isMy){
                return SendMessageBubble(message: message.text);
              }
              else {
                return ReceiveMessageBubble(message: message.text);
              }
            },
          ),
        ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.all(8),
        height: 40,
        color: ColorConstant.black100,
        child: Align(
          alignment: Alignment.center,
          child: Row(
            children: [
              SizedBox(
                width: 264,
                height: 48,
                child: TextFormField(
                  textAlign: TextAlign.left,
                  autofocus: true,
                  cursorColor: ColorConstant.purple40,
                  decoration: InputDecoration(
                    fillColor: ColorConstant.purple95,
                    filled: true,
                    hintText: 'メッセージを入力',
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    border: InputBorder.none,
                  ),
                ),
              ),
              Spacer(),
              Icon(
                Icons.send,
                color: ColorConstant.purple40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}