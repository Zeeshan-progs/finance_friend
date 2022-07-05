import 'package:flutter/material.dart';

import '../constants/assets.dart';
import '../constants/color.dart';

class ArrowWidget extends StatelessWidget {
  ArrowWidget({
    Key? key,
    this.onTap,
  }) : super(key: key);

  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CircleAvatar(
        maxRadius: 18,
        backgroundColor: AppColor.secondary,
        child: Image.asset(
          Assets.leftArrow,
          height: 25,
          width: 25,
        ),
      ),
    );
  }
}
