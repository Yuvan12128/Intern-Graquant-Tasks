import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:skcl_vms/app/component/custom_text_field.dart';
import 'package:skcl_vms/app/component/typography.dart';
import 'package:skcl_vms/app/constant/size_config.dart';
import 'package:skcl_vms/app/utility/phone_number_validation.dart';

class PhoneNumberTextFieldComponent {
  static Container phoneNumberTextFieldComponent(
    BuildContext context,
    TextEditingController textController,
    int? maxlength,
    String hintText,
    Function(String) onChanged,
    bool isPrefixIconRequired,
    TextAlign? textAlign,
  ) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 8 * SizeConfig.widthMultiplier,
      ),
      child: CustomTextField(
        textAlign: textAlign,
        controller: textController,
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        cursorColor: Theme.of(context).colorScheme.primary,
        hintText: hintText,
        maxLength: maxlength != null ? maxlength : 10,
        onChanged: onChanged,
        prefixIcon: isPrefixIconRequired
            ? Container(
                padding: const EdgeInsets.all(12.5),
                margin: EdgeInsets.symmetric(
                    horizontal: 8 * SizeConfig.widthMultiplier),
                child: Text(
                  "+91",
                  style: subtitle1.copyWith(
                      fontSize: 4.5 * SizeConfig.textMultiplier,
                      color: Theme.of(context).colorScheme.secondary),
                ),
              )
            : null,
        enabledBorder: CustomOutlineInputBorder.outlineInputBorder(
          context,
          Theme.of(context).colorScheme.secondary.withValues(alpha: 0.8),
        ),
        focusedBorder: CustomOutlineInputBorder.outlineInputBorder(
          context,
          Theme.of(context).colorScheme.primary,
        ),
        errorBorder: CustomOutlineInputBorder.outlineInputBorder(
          context,
          Theme.of(context).colorScheme.error,
        ),
        validationFun: PhoneNumberValidationUtility.phoneNumberValidation,
      ),
    );
  }
}
