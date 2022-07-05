import 'package:finance_friend/constants/assets.dart';
import 'package:finance_friend/constants/color.dart';
import 'package:finance_friend/constants/theme.dart';
import 'package:finance_friend/utils/methods.dart';
import 'package:finance_friend/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';

import '../../widget/history_widget.dart';
import '../../widget/left_arrow_widget.dart';
import 'package:get/get.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: AppColor.white,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.dark,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // lets add lottie image in our app
              DeviceUtils.blackHeight(20),
              Container(
                height: DeviceUtils.getScaledHeight(context, 0.4),
                width: DeviceUtils.width(context),
                child: Lottie.asset(
                  Assets.lottieImage,
                  repeat: true,
                  reverse: true,
                  frameRate: FrameRate.composition,
                ),
              ),

              DeviceUtils.blackHeight(16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Transaction history',
                  style: themeData.textTheme.bodyText1,
                ),
              ),

              DeviceUtils.blackHeight(16),
              _transactionWidget(context),
              DeviceUtils.blackHeight(19),
              Container(
                width: DeviceUtils.width(context),
                margin: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: const Color(0xff37474F).withOpacity(0.14),
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(18),
                  ),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'History',
                            style: themeData.textTheme.bodyText1?.copyWith(
                              fontWeight: FontWeight.w200,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'See all',
                            style: themeData.textTheme.bodyText1,
                          ),
                        )
                      ],
                    ),
                    DeviceUtils.blackHeight(16),
                    ...List.generate(
                      3,
                      (index) => HistoryCard(index: index),
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

  Card _transactionWidget(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      color: AppColor.white,
      shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: AppColor.grey,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(24)),
      child: Container(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
          width: DeviceUtils.width(context),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    Assets.cashBanner,
                    height: 40,
                    width: 30,
                  ),
                  DeviceUtils.blackWidth(14),
                  Text(
                    'Amount paid ',
                    style: themeData.textTheme.bodyText1?.copyWith(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff37474f),
                    ),
                  ),
                ],
              ),
              DeviceUtils.blackHeight(16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    currencyFormat(120),
                    style: themeData.textTheme.bodyText1?.copyWith(
                      fontSize: 15,
                      color: AppColor.black,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  ArrowWidget(),
                ],
              ),
            ],
          )),
    );
  }
}
