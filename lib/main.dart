import 'package:finance_friend/constants/theme.dart';
import 'package:finance_friend/di/service%20utils/Services.dart';
import 'package:finance_friend/di/service%20utils/service_locator.dart';
import 'package:finance_friend/ui/home.dart';
import 'package:finance_friend/utils/routes.dart/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await serviceLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final _navigatorService = getIt<NavigationService>();
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: _navigatorService.naviagatorKey,
      routes: Routes.routes,
      darkTheme: themeData,
      initialRoute: Routes.home,
      title: 'Finance Friend',
      debugShowCheckedModeBanner: false,
      home: const Home(),
      theme: themeData,
    );
  }
}
