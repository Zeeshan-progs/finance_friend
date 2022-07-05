import 'package:finance_friend/constants/color.dart';
import 'package:finance_friend/constants/font_family.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData themeData = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColor.white,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: AppColor.secondary,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
      systemStatusBarContrastEnforced: true,
    ),
  ),
  backgroundColor: AppColor.white,
  primaryColor: AppColor.black,
  textTheme: const TextTheme(
    bodyText1: TextStyle(
      color: AppColor.black,
      fontSize: 14,
      fontFamily: FontFamily.popins,
      fontWeight: FontWeight.normal,
    ),
    subtitle1:  TextStyle(
      color: AppColor.white,
      fontSize: 14,
      fontFamily: FontFamily.popins,
      fontWeight: FontWeight.normal,
    ),
    headline6: TextStyle(
      color: AppColor.black,
      fontSize: 14,
      fontFamily: FontFamily.popins,
      fontWeight: FontWeight.w500,
    ),
  ),
);
