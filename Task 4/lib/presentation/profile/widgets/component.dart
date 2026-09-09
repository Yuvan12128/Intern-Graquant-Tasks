import 'package:flutter/material.dart';
import 'package:skcl_vms/app/component/typography.dart';
import 'package:skcl_vms/app/constant/size_config.dart';

class Component {
  static InputDecoration outlineInputDecoration(
    BuildContext context,
  ) {
    return InputDecoration(
      contentPadding: EdgeInsets.symmetric(
          vertical: 4 * SizeConfig.widthMultiplier,
          horizontal: 4 * SizeConfig.widthMultiplier),
      hintText: 'Please enter your description',
      enabledBorder: outlineInputBorder(context),
      focusedBorder: outlineInputBorder(context).copyWith(
        borderSide: BorderSide(
          color: Theme.of(context).colorScheme.primary,
          width: 2.0,
        ),
      ),
      errorBorder: outlineInputBorder(context).copyWith(
        borderSide: BorderSide(color: Colors.red),
      ),
      focusedErrorBorder: outlineInputBorder(context).copyWith(
        borderSide: BorderSide(color: Colors.red),
      ),
      labelStyle: bodyText1.copyWith(
          color: Theme.of(context).colorScheme.secondary.withOpacity(0.8)),
      hintStyle: bodyText2.copyWith(
          color: Theme.of(context).colorScheme.secondary.withOpacity(0.5)),
    );
  }

  static OutlineInputBorder outlineInputBorder(BuildContext context) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: Theme.of(context).colorScheme.secondary,
      ),
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    );
  }
}
