import 'package:finance_friend/constants/assets.dart';
import 'package:finance_friend/constants/color.dart';
import 'package:finance_friend/constants/theme.dart';
import 'package:finance_friend/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
// lets add lottie image in our app
            DeviceUtils().blackHeight(20),
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

            DeviceUtils().blackHeight(16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Transaction history',
                style: themeData.textTheme.bodyText1,
              ),
            ),

            DeviceUtils().blackHeight(16),
            Card(
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
                            height: 24,
                            width: 24,
                          ),
                          DeviceUtils().blackWidth(24),
                          Text(
                            'Amount paid',
                            style: themeData.textTheme.bodyText1?.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w200,
                              color: const Color(0xff37474f),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
