import 'package:finance_friend/constants/theme.dart';
import 'package:finance_friend/di/service%20utils/Services.dart';
import 'package:finance_friend/di/service%20utils/service_locator.dart';
import 'package:finance_friend/ui/home/home.dart';
import 'package:finance_friend/utils/routes.dart/routes.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await serviceLocator();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
  final _navigatorService = getIt<ServicesLocator>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: _navigatorService.naviagatorKey,
      routes: Routes.routes,
      initialRoute: Routes.home,
      title: 'Finance Friend',
      debugShowCheckedModeBanner: false,
      home:const Home(),
      theme: themeData,
    );
  }
}
