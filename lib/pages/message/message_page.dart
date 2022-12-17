import 'package:flutter/material.dart';
import 'package:flutter_template/constants/color_constant.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorConstant.black100,
        foregroundColor: ColorConstant.purple40,
      ),
      body: SafeArea(
        child: Container(
          color: ColorConstant.black100,
          padding: EdgeInsets.all(8),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            itemCount: 6,
            itemBuilder: (BuildContext context, int index){
              return ListTile(
                leading: CircleAvatar(),
                trailing: Text('21:06'),
                title: Text('aaa'),
              );
            },
          ),
        ),
      ),
    );
  }
}
