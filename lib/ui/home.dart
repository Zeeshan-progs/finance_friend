import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:finance_friend/constants/assets.dart';
import 'package:finance_friend/constants/color.dart';
import 'package:finance_friend/di/service%20utils/service_locator.dart';
import 'package:finance_friend/di/store/home_store.dart';
import 'package:finance_friend/ui/calendar/calendar.dart';
import 'package:finance_friend/ui/dashboard/dashboard.dart';
import 'package:finance_friend/ui/profile/profile.dart';
import 'package:finance_friend/ui/wallet/wallet.dart';
import 'package:finance_friend/utils/routes.dart/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<IconData> bottomBar = [
    CupertinoIcons.home,
    CupertinoIcons.calendar,
    Icons.wallet,
    CupertinoIcons.person,
  ];

  List<Widget> body = const [
    Dashboard(
      key: PageStorageKey(Routes.dashboard),
    ),
    Calendar(
      key: PageStorageKey(Routes.calendar),
    ),
    Wallet(
      key: PageStorageKey(Routes.wallet),
    ),
    Profile(
      key: PageStorageKey(Routes.profile),
    ),
  ];
  final _controller = getIt<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          children: body,
          index: _controller.tabIndex.value,
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, Routes.create);
          },
          backgroundColor: AppColor.secondary,
          child: Image.asset(
            Assets.add,
            color: AppColor.black,
            height: 24,
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: AppColor.primary,
        ),
        child: Obx(
          () => AnimatedBottomNavigationBar(
            notchSmoothness: NotchSmoothness.verySmoothEdge,
            leftCornerRadius: 14,
            rightCornerRadius: 14,
            elevation: 12,
            gapWidth: MediaQuery.of(context).size.width * 0.3,
            notchMargin: 10,
            inactiveColor: AppColor.grey,
            activeColor: AppColor.black,
            activeIndex: _controller.tabIndex.value,
            gapLocation: GapLocation.center,
            onTap: (index) {
              _controller.setTabIndex(index);
            },
            icons: bottomBar,
          ),
        ),
      ),
    );
  }
}
