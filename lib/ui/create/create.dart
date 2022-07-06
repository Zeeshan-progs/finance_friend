import 'package:finance_friend/constants/color.dart';
import 'package:finance_friend/utils/utils.dart';
import 'package:finance_friend/widget/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constants/theme.dart';
import '../../widget/custom_app_bar.dart';

class Create extends StatelessWidget {
  Create({Key? key}) : super(key: key);

  // text controllers  ---------------------------
  final amountController = TextEditingController();

  // focus node  ---------------------------------
  final amountFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        titleText: 'Create',
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            DeviceUtils.blankHeight(16),
            TextFieldWidget(
              focusNode: amountFocusNode,
              label: 'Enter amount',
              textEditingController: amountController,
            ),
            DeviceUtils.blankHeight(16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: RadioListTile(
                    activeColor: AppColor.secondary,
                    controlAffinity: ListTileControlAffinity.leading,
                    contentPadding: EdgeInsets.zero,
                    dense: true,
                    visualDensity: VisualDensity.compact,
                    toggleable: true,
                    value: true,
                    groupValue: true,
                    onChanged: (val) {},
                    title: Text(
                      'Online',
                      style: themeData.textTheme.bodyText2,
                    ),
                  ),
                ),
                Flexible(
                  child: RadioListTile(
                    activeColor: AppColor.secondary,
                    controlAffinity: ListTileControlAffinity.leading,
                    contentPadding: EdgeInsets.zero,
                    dense: true,
                    visualDensity: VisualDensity.compact,
                    toggleable: true,
                    value: false,
                    groupValue: true,
                    onChanged: (val) {},
                    title: Text(
                      'Offline',
                      style: themeData.textTheme.bodyText2?.copyWith(
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            DeviceUtils.blankHeight(24),
            Container(
              width: DeviceUtils.width(context),
              decoration: BoxDecoration(
                color: AppColor.white,
                boxShadow: [
                  BoxShadow(
                    color: AppColor.black.withOpacity(0.3),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
                border: Border.all(
                  color: AppColor.grey,
                  width: 0.7,
                ),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
              ),
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        color: AppColor.secondary.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: AppColor.secondary)),
                    child: Row(
                      children: [
                        Checkbox(
                          activeColor: AppColor.secondary,
                          checkColor: AppColor.primary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          splashRadius: 4,
                          side: const BorderSide(
                              color: AppColor.primary, width: 1),
                          fillColor:
                              MaterialStateProperty.all(Colors.transparent),
                          value: true,
                          onChanged: (val) {},
                        ),
                        Text(
                          'By Credit card / Debit card',
                          style: themeData.textTheme.bodyText1,
                        ),
                      ],
                    ),
                  ),
                  DeviceUtils.blankHeight(8),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        color: AppColor.secondary.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: AppColor.secondary)),
                    child: Row(
                      children: [
                        Checkbox(
                          activeColor: AppColor.secondary,
                          checkColor: AppColor.primary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          splashRadius: 4,
                          side: const BorderSide(
                              color: AppColor.primary, width: 1),
                          fillColor:
                              MaterialStateProperty.all(Colors.transparent),
                          value: false,
                          onChanged: (val) {},
                        ),
                        Text(
                          'By UPI / Net banking',
                          style: themeData.textTheme.bodyText1,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
