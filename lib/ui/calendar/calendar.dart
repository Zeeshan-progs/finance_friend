import 'package:finance_friend/constants/color.dart';
import 'package:finance_friend/constants/font_family.dart';
import 'package:finance_friend/constants/theme.dart';
import 'package:flutter/material.dart';

class Calendar extends StatelessWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Theme(
                data: ThemeData(
                  colorScheme: const ColorScheme.light(
                    primary: AppColor.secondary,
                    onPrimary: AppColor.black,
                  ),
                  fontFamily: FontFamily.popins,
                  textTheme: themeData.textTheme,
                  textButtonTheme: TextButtonThemeData(
                    style: ElevatedButton.styleFrom(
                      primary: AppColor.black,
                    ),
                  ),
                ),
                child: CalendarDatePicker(
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2099),
                  onDateChanged: (_) {},
                  initialCalendarMode: DatePickerMode.day,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
