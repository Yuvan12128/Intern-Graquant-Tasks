import 'package:flutter/material.dart';
import 'package:skcl_vms/app/component/typography.dart';
import 'package:skcl_vms/app/constant/component_constant.dart';
import 'package:skcl_vms/app/constant/size_config.dart';

List<Widget> headerContainer(BuildContext context, String header) {
  return [
    Padding(
      padding: EdgeInsets.only(
        left: SizeConfig.widthMultiplier * 4,
      ),
      child: Text(
        header,
        style: bodyText1.copyWith(
            fontSize: SizeConfig.textMultiplier * 3.8,
            color: Theme.of(context).colorScheme.secondary),
      ),
    ),
    SizedBox(
      height: SizeConfig.widthMultiplier * 2,
    ),
  ];
}

List<Widget> customTextField(
  BuildContext context,
  String header,
  String hintText,
  TextEditingController textEditingController,
  Function(String?) registrationStateChangedFunc,
  String? errorText,
  bool? isReadonly,
) {
  return [
    ...headerContainer(context, header),
    Center(
      child: textField(
        context,
        null,
        textEditingController,
        registrationStateChangedFunc,
        errorText,
        hintText,
        isReadonly,
      ),
    ),
    SizedBox(
      height: SizeConfig.widthMultiplier * 4,
    ),
  ];
}

List<Widget> customTextFormField(
  BuildContext context,
  String header,
  String hintText,
  TextEditingController textEditingController,
  Function(String?) registrationStateChangedFunc,
  String? Function(String?) validationFun,
  TextInputType? keyboardType,
  int? maximumLength,
  bool? isReadonly,
) {
  return [
    ...headerContainer(context, header),
    Center(
      child: textFormField(
        context,
        textEditingController,
        registrationStateChangedFunc,
        validationFun,
        hintText,
        keyboardType,
        maximumLength,
        isReadonly,
      ),
    ),
    SizedBox(
      height: SizeConfig.widthMultiplier * 4,
    ),
  ];
}
