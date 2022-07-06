import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

import '../constants/color.dart';
import '../constants/theme.dart';

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget({
    Key? key,
    required this.focusNode,
    required this.label,
    required this.textEditingController,
    this.enabled,
    this.inputFormator,
    this.onChange,
    this.onFieldSubmit,
    this.textCapitalization = TextCapitalization.none,
    this.textInputType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
  }) : super(key: key);
  String label;
  TextEditingController textEditingController;
  FocusNode focusNode;
  void Function(String)? onChange;
  TextCapitalization textCapitalization;
  List<TextInputFormatter>? inputFormator;
  void Function(String)? onFieldSubmit;
  bool? enabled;
  TextInputType textInputType;
  TextInputAction textInputAction;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      controller: textEditingController,
      onChanged: onChange,
      textCapitalization: textCapitalization,
      inputFormatters: inputFormator,
      onFieldSubmitted: onFieldSubmit,
      enabled: enabled,
      keyboardType: textInputType,
      textInputAction: textInputAction,
      style: themeData.textTheme.bodyText2?.copyWith(
        color: AppColor.black,
        fontSize: 16,
        letterSpacing: 1,
        fontWeight: FontWeight.w500,
      ),
      decoration: InputDecoration(
        labelText: label,
        border: _textInputBorder(),
        labelStyle: themeData.textTheme.bodyText2?.copyWith(
          color: AppColor.primary,
          fontSize: 16,
          letterSpacing: 1,
          fontWeight: FontWeight.w500,
        ),
        errorBorder: _textInputBorder(color: AppColor.error),
        enabledBorder: _textInputBorder(),
        focusedBorder: _textInputBorder(),
        disabledBorder: _textInputBorder(color: AppColor.greymap[10]),
        focusedErrorBorder: _textInputBorder(color: AppColor.error),
      ),
    );
  }

  OutlineInputBorder _textInputBorder({Color? color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        width: 1,
        color: color ?? AppColor.primary,
        style: BorderStyle.solid,
      ),
      gapPadding: 16,
    );
  }
}
