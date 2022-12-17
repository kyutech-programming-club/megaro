import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/constants/color_constant.dart';
import 'package:go_router/go_router.dart';

class MessageButton extends ConsumerWidget {
  const MessageButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
       return SizedBox(
         width: 64,
         height: 64,
         child: FloatingActionButton(
              onPressed: () => context.push('/message_page/:'),
              backgroundColor: ColorConstant.green100,
              child: Icon(
                Icons.chat,
                color: ColorConstant.green40,
              ),
            ),
       );
  }
}
