import 'package:finance_friend/ui/home/home.dart';
import 'package:flutter/cupertino.dart';

class Routes {
//   routes define ----------------------------------------


// home screen 
  static const home = '';

  static Map<String, Widget Function(BuildContext contex)> routes = {
    home:(contex) => const Home(),
  };
}
