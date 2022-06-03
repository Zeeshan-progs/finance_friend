import 'package:finance_friend/constants/assets.dart';
import 'package:finance_friend/constants/color.dart';
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
        ],
      )),
    );
  }
}
