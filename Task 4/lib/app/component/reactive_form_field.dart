import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skcl_vms/app/component/text_field_container.dart';
import 'package:skcl_vms/app/component/typography.dart';
import 'package:skcl_vms/app/constant/size_config.dart';

List<Widget> reactiveFormTextField(
  BuildContext context,
  String header,
  FormGroup formGroup,
  String formControllerName,
  TextInputType? keyboardType,
  int? maxLength,
  Map<String, ValidationMessageFunction>? validationMessages,
  Widget? prefixIcon,
  Function(FormControl<Object?> control)? onPress,
  bool? readOnly,
  bool mandatoryField,
) {
  return [
    ...headerContainer(context, header),
    ReactiveTextField(
      keyboardType: keyboardType != null ? keyboardType : TextInputType.name,
      validationMessages: validationMessages,
      maxLength: maxLength,
      formControlName: formControllerName,
      style: subtitle2.copyWith(
        color: Theme.of(context).colorScheme.secondary.withOpacity(0.8),
      ),
      decoration: InputDecoration(
        errorStyle: bodyText2.copyWith(
          color: Theme.of(context).colorScheme.error,
          fontSize: 2.5 * SizeConfig.textMultiplier,
        ),
        hintText: mandatoryField ? header : "$header (Optional)",
        labelStyle: bodyText1.copyWith(
            color: Theme.of(context).colorScheme.secondary.withOpacity(0.8)),
        hintStyle: bodyText2.copyWith(
            color: Theme.of(context).colorScheme.secondary.withOpacity(0.5)),
        contentPadding: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 5,
          vertical: SizeConfig.widthMultiplier * 5,
        ),
        prefixIcon: prefixIcon != null ? prefixIcon : null,
      ),
      onTap: onPress,
      readOnly: readOnly ?? false,
    ),
    SizedBox(
      height: SizeConfig.widthMultiplier * 4,
    ),
  ];
}

List<Widget> reactiveFormDropDown(
  BuildContext context,
  String header,
  FormGroup formGroup,
  String formControllerName,
  List<DropdownMenuItem<dynamic>> items,
  TextInputType? keyboardType,
  int? maxLength,
  Map<String, ValidationMessageFunction>? validationMessages,
  Widget? prefixIcon,
  Function(FormControl<Object?> control)? onPress,
  bool? readOnly,
  bool mandatoryField,
) {
  return [
    ...headerContainer(context, header),
    ReactiveDropdownField(
      hint: Text(
        mandatoryField ? header : "$header (Optional)",
        style: bodyText2.copyWith(
          color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
        ),
      ),
      formControlName: formControllerName,
      decoration: InputDecoration(
        errorStyle: bodyText2.copyWith(
          color: Theme.of(context).colorScheme.error,
          fontSize: 2.5 * SizeConfig.textMultiplier,
        ),
        labelStyle: bodyText1.copyWith(
            color: Theme.of(context).colorScheme.secondary.withOpacity(0.8)),
        hintStyle: bodyText2.copyWith(
            color: Theme.of(context).colorScheme.secondary.withOpacity(0.5)),
        contentPadding: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 5,
          vertical: SizeConfig.widthMultiplier * 5,
        ),
      ),
      isExpanded: true,
      iconEnabledColor: Theme.of(context).primaryColor,
      iconSize: 5 * SizeConfig.widthMultiplier,
      items: items,
      onTap: onPress,
      validationMessages: validationMessages,
    ),
    SizedBox(
      height: SizeConfig.widthMultiplier * 4,
    ),
  ];
}
