import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_template/constants/color_constant.dart';
import 'package:flutter/services.dart';
import 'package:flutter_template/providers/domain_providers.dart';
import 'package:flutter_template/utils/router.dart';

import 'data/firestore_data_source.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  print("バックグラウンドでメッセージを受け取りました");
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  ).then((_) => runApp(ProviderScope(child: MyApp())));
}

class MyApp extends ConsumerStatefulWidget {
  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  final AndroidNotificationChannel channel = AndroidNotificationChannel(
    'high_importance_channel', // id
    'High Importance Notifications', // title
    description:
        'This channel is used for important notifications.', // description
    importance: Importance.high,
  );

  @override
  void initState() {
    super.initState();
    Future(() async{
      final token = await FirebaseMessaging.instance.getToken();
      ref.read(tokenProvider.notifier).update((state) => token!);
      await ref.read(firestoreProvider).loadChat();
      setState(() {

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''), //English
        Locale('ja', ''), //Japanese
      ],
      theme: ThemeData(
        primaryColor: ColorConstant.black100,
        fontFamily: 'NotoSans',
        dividerColor: Colors.transparent,
      ),
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
    );
  }
}
