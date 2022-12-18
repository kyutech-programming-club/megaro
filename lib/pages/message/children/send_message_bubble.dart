import 'package:flutter/material.dart';
import 'package:flutter_template/constants/color_constant.dart';

class SendMessageBubble extends StatelessWidget {
  const SendMessageBubble({Key? key, required this.message}) : super(key: key);
  final String message;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(40),
              topLeft: Radius.circular(40),
              bottomLeft: Radius.circular(40),
            ),
            color: ColorConstant.green95,
          ),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(message),
          ),
        ),
      ),
    );
  }
}
