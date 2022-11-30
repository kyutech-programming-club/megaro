import 'package:go_router/go_router.dart';
import 'package:flutter_template/pages/setting/children/notification/notification_page.dart';
import 'package:flutter_template/pages/root/root_page.dart';
import 'package:flutter_template/pages/setting/setting_page.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => RootPage(),
      routes: [
        GoRoute(
          path: 'notification/:',
          builder: (context, state) => const NotificationPage(),
        )
      ],
    ),
    GoRoute(
      path: '/setting',
      builder: (context, state) => const SettingPage(),
    ),
  ],
);
