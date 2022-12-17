import 'package:flutter_template/pages/message/message_page.dart';
import 'package:flutter_template/pages/top/top_page.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_template/pages/setting/children/notification/notification_page.dart';
import 'package:flutter_template/pages/setting/setting_page.dart';
import 'package:flutter_template/pages/top/top_page.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => TopPage(),
      routes: [
        GoRoute(
          path: 'notification/:',
          builder: (context, state) => const NotificationPage(),
        )
      ],
    ),
    GoRoute(
      path: '/message_page/:',
      builder: (context, state) => const MessagePage(),
    ),
    GoRoute(
      path: '/setting',
      builder: (context, state) => const SettingPage(),
    ),
  ],
);
