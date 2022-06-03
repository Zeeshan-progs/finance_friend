import 'package:finance_friend/constants/color.dart';
import 'package:finance_friend/constants/font_family.dart';
import 'package:flutter/material.dart';

ThemeData themeData = ThemeData(
  backgroundColor: AppColor.white,
  textTheme: const TextTheme(
    bodyText1: TextStyle(
      color: AppColor.black,
      fontSize: 14,
      fontFamily: FontFamily.popins,
      fontWeight: FontWeight.w400,
    ),
  ),
);
