import 'package:flutter/material.dart';
import 'package:flutter_template/constants/color_constant.dart';

class ReceiveMessage extends StatelessWidget {
  const ReceiveMessage({Key? key, required this.message}) : super(key: key);
  final String message;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(),
        SizedBox(
          width: 16.0,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: ColorConstant.purple95,
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(message),
          ),
        ),
      ],
    );
  }
}
