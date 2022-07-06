import 'package:finance_friend/constants/color.dart';
import 'package:flutter/material.dart';

import '../constants/theme.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.leading,
    this.title,
    this.titleText = '',
  }) : super(key: key);
  Widget? leading, title;
  String titleText;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: leading,
      title: title ??
          Text(
            titleText,
            style: themeData.textTheme.bodyText2?.copyWith(
              fontWeight: FontWeight.w500,
              color: AppColor.primary,
              fontSize: 18,
              letterSpacing: 0.67,
            ),
          ),
      iconTheme: const IconThemeData(
        color: AppColor.primary,
        size: 20,
        opacity: 1,
      ),
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      elevation: 0,
      flexibleSpace: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColor.secondary.withOpacity(0.9),
                AppColor.secondary.withOpacity(0.4),
              ],
            )),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
