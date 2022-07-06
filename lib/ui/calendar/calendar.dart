import 'package:finance_friend/constants/assets.dart';
import 'package:finance_friend/constants/color.dart';
import 'package:finance_friend/constants/font_family.dart';
import 'package:finance_friend/constants/theme.dart';
import 'package:finance_friend/utils/methods.dart';
import 'package:finance_friend/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
              DeviceUtils.blankHeight(16),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 0, 21, 0),
                decoration: const BoxDecoration(
                  color: AppColor.primary,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(15),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 4,
                              width: DeviceUtils.getScaledHeight(context, 0.1),
                              decoration: BoxDecoration(
                                color: AppColor.grey,
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 16, 18),
                          child: Text(
                            'Proceed',
                            style: themeData.textTheme.bodyText2?.copyWith(
                              fontStyle: FontStyle.normal,
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: AppColor.secondary,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                    DeviceUtils.blankHeight(12),
                    _dateRow(),
                    DeviceUtils.blankHeight(20),
                    ...List.generate(
                      5,
                      (index) => _container(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container _container() {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              offset: const Offset(0, 2),
              color: AppColor.grey.withOpacity(.4),
            ),
          ]),
      child: Row(children: [
        _imageContainer(),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        'Shopping',
                        style: themeData.textTheme.bodyText1?.copyWith(
                          fontSize: 15,
                          fontWeight: FontWeight.w200,
                          color: AppColor.black,
                        ),
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                      ),
                    ),
                    DeviceUtils.blankWidth(8),
                    Flexible(
                      child: Text(
                        currencyFormat(543),
                        style: themeData.textTheme.bodyText1?.copyWith(
                          fontSize: 13,
                          fontWeight: FontWeight.w200,
                          color: AppColor.black,
                        ),
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        DateFormat('dd MMM yyyy')
                            .format(DateTime(2022, 04, 12)),
                        style: themeData.textTheme.bodyText1?.copyWith(
                          fontSize: 13,
                          fontWeight: FontWeight.w100,
                          color: AppColor.grey,
                        ),
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                      ),
                    ),
                    DeviceUtils.blankWidth(8),
                    Flexible(
                      child: Text(
                        'In cash',
                        style: themeData.textTheme.bodyText1?.copyWith(
                          fontSize: 13,
                          fontWeight: FontWeight.w100,
                          color: AppColor.grey,
                        ),
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }

  Container _imageContainer() => Container(
        height: 60,
        width: 60,
        margin: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: Colors.blueAccent.withOpacity(0.2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Image.asset(
            Assets.profile,
            height: 26,
            color: Colors.blueAccent,
            width: 25,
          ),
        ),
      );

  Row _dateRow() {
    return Row(
      children: [
        Image.asset(
          Assets.calendar,
          color: AppColor.secondary,
          height: 25,
          width: 25,
        ),
        DeviceUtils.blankWidth(12),
        RichText(
          text: TextSpan(
              text: DateFormat('dd').format(
                DateTime(2022, 05, 02),
              ),
              style: themeData.textTheme.bodyText2?.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: AppColor.white,
              ),
              children: [
                TextSpan(
                  text: dateFormator(DateTime(2022, 05, 02)) +
                      DateFormat(' MMM yyy').format(
                        DateTime(2022, 05, 02),
                      ),
                  style: themeData.textTheme.bodyText2?.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: AppColor.white,
                  ),
                ),
                TextSpan(text: ' - '),
                TextSpan(
                  text: DateFormat('dd').format((DateTime(2022, 04, 1))),
                ),
                TextSpan(
                  text: dateFormator((DateTime(2022, 04, 1))) +
                      DateFormat(' MMM yyy').format(
                        DateTime(2022, 05, 13),
                      ),
                  style: themeData.textTheme.bodyText2?.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: AppColor.white,
                  ),
                ),
              ]),
        ),
      ],
    );
  }

  String dateFormator(DateTime date) {
    int day = date.day;
    if (day == 1) {
      return 'st';
    } else if (day == 2) {
      return 'nd';
    } else if (day == 3) {
      return 'rd';
    } else {
      return "st";
    }
  }
}
