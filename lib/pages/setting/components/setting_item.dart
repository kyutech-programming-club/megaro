import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_template/constants/color_constant.dart';
import 'package:flutter_template/constants/text_style_constant.dart';

class SettingItem extends StatelessWidget {
  const SettingItem(
      {Key? key,
      required this.title,
      required this.route,
      required this.icon,
      required this.desc})
      : super(key: key);
  final String title;
  final IconData icon;
  final String desc;
  final String route;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(route),
      child: Container(
        margin: EdgeInsets.only(right: 16, left: 16),
        height: 64,
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 8),
        child: Row(
          children: [
            Icon(icon),
            SizedBox(width: 24),
            SizedBox(
              width: MediaQuery.of(context).size.width - 96,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyleConstant.normal16,
                  ),
                  Visibility(
                    visible: desc != "",
                    child: Text(
                      desc,
                      style: TextStyleConstant.normal14
                          .copyWith(color: ColorConstant.black40),
                      overflow: TextOverflow.clip,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
