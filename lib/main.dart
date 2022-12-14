import 'dart:ui' as ui;

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_template/constants/color_constant.dart';
import 'package:flutter/services.dart';
import 'package:flutter_template/data/firestore_data_source.dart';
import 'package:flutter_template/entity/location/location_entity.dart';
import 'package:flutter_template/providers/domain_providers.dart';
import 'package:flutter_template/providers/infrastructure_providers.dart';
import 'package:flutter_template/providers/presentation_providers.dart';
import 'package:flutter_template/repositories/location_repository.dart';
import 'package:flutter_template/utils/router.dart';
import 'package:geoflutterfire/geoflutterfire.dart';

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

class _MyAppState extends ConsumerState<MyApp> with WidgetsBindingObserver {
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  final AndroidNotificationChannel channel = AndroidNotificationChannel(
    'high_importance_channel', // id
    'High Importance Notifications', // title
    description:
        'This channel is used for important notifications.', // description
    importance: Importance.high,
  );

  Future<Uint8List> getBytesFromAsset(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
        .buffer
        .asUint8List();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {
    if(state == AppLifecycleState.resumed){
      // アプリが復帰した(resumed)時に実行したい処理;
      print("復帰したよ");
    } else if (state == AppLifecycleState.detached || state == AppLifecycleState.paused) {
      print("落ちたよ");
      await ref.read(firestoreProvider).deleteLocation();
    }
  }

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    Future(() async {
      final Uint8List markerIcon =
          await getBytesFromAsset('assets/images/user_icon.png', 240);
      ref.read(mapIconProvider.notifier).update((state) => markerIcon);
      final token = await FirebaseMessaging.instance.getToken() ?? "token";
      ref.read(tokenProvider.notifier).update((state) => token);
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(currentLocationStreamProvider).whenData((value) {
      ref.read(batteryProvider).whenData((battery) {
        final token = ref.read(tokenProvider);
        ref.read(locationRepositoryProvider).addLocation(
              LocationEntity.fromGeoPoint(
                token,
                GeoFirePoint(value.latitude!, value.longitude!),
                battery,
              ),
            );
      });
    });
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
