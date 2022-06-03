import 'package:finance_friend/ui/calendar/calendar.dart';
import 'package:finance_friend/ui/create/create.dart';
import 'package:finance_friend/ui/dashboard/dashboard.dart';
import 'package:finance_friend/ui/home.dart';
import 'package:finance_friend/ui/profile/profile.dart';
import 'package:finance_friend/ui/wallet/wallet.dart';
import 'package:flutter/cupertino.dart';

class Routes {
//   routes define ----------------------------------------

// home screen
  static const home = '/home';

// dashboard screen
  static const dashboard = '/dashboard';

// calender screen
  static const calendar = '/calendar';

// create screen
  static const create = '/create';

// wallet screen
  static const wallet = '/wallet';

// profile screen
  static const profile = '/profile';

  static Map<String, Widget Function(BuildContext contex)> routes = {
    home: (contex) => const Home(),
    calendar: (contex) => const Calendar(),
    dashboard: (contex) => const Dashboard(),
    wallet: (contex) => const Wallet(),
    create: (contex) => const Create(),
    profile: (contex) => const Profile(),
  };
}
