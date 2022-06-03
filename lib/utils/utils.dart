import 'package:finance_friend/di/service%20utils/Services.dart';
import 'package:flutter/material.dart';

import '../di/service utils/service_locator.dart';

class DeviceUtils {
  var navigationService = getIt<NavigationService>().naviagatorKey;
  // blank space height
  Widget blackHeight(double height) {
    return Container(
      height: height,
    );
  }

// blank spacec width
  Widget blackWidget(double value) {
    return Container(
      width: value,
    );
  }

  // calculated width

  static double getScaledWidth(BuildContext context, double scale) =>
      scale * MediaQuery.of(context).size.width;

  static double getScaledHeight(BuildContext context, double scale) =>
      scale * MediaQuery.of(context).size.height;

  static double width(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static double height(BuildContext context) =>
      MediaQuery.of(context).size.height;
}
