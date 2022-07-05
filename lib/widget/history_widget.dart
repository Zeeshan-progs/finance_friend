import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../constants/color.dart';
import '../constants/theme.dart';
import '../utils/methods.dart';
import '../utils/utils.dart';
import 'left_arrow_widget.dart';




class HistoryCard extends StatelessWidget {
  HistoryCard({
    Key? key,
    required this.index,
  }) : super(key: key);
  int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: const BoxDecoration(
        color: AppColor.primary,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24),
          bottomLeft: Radius.circular(24),
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 9,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  DateFormat('MMM dd, yyyy').format(
                    DateTime(2022, 4, 2),
                  ),
                  style: themeData.textTheme.bodyText1!.copyWith(
                    color: AppColor.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                  ),
                ),
              ),
              Text(
                'John miller'.capitalize!,
                style: themeData.textTheme.subtitle1!.copyWith(
                  color: AppColor.white,
                ),
              ),
            ],
          ),
          DeviceUtils.blackHeight(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: RichText(
                  text: TextSpan(
                      text: currencyFormat(20),
                      style:
                          themeData.textTheme.subtitle1?.copyWith(fontSize: 18),
                      children: [
                        const TextSpan(
                          text: ' / ',
                        ),
                        TextSpan(
                          text: index.isEven ? 'Dues' : 'Paid',
                          style: themeData.textTheme.subtitle1?.copyWith(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                            fontStyle: FontStyle.italic,
                            color: index.isEven
                                ? AppColor.white
                                : AppColor.secondary,
                          ),
                        ),
                      ]),
                ),
              ),
              ArrowWidget(),
            ],
          )
        ],
      ),
    );
  }
}
