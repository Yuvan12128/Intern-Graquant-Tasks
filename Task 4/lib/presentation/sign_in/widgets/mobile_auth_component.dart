import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skcl_vms/app/component/custom_button.dart';
import 'package:skcl_vms/app/component/phone_number_text_field_component.dart';
import 'package:skcl_vms/app/component/typography.dart';
import 'package:skcl_vms/app/constant/route_name.dart';
import 'package:skcl_vms/app/constant/size_config.dart';
import 'package:skcl_vms/presentation/sign_in/cubit/phone_number_login/phone_number_login_cubit.dart';
import 'package:skcl_vms/presentation/sign_in_otp_verification/model/sign_in_otp_verification.dart';

class MobileAuthComponent {
  static Form phoneNumberTextFormField(
    BuildContext context,
    PhoneNumberLoginState state,
    TextEditingController phoneNumberController,
    GlobalKey<FormState> phoneNumberFormGlobalKey,
  ) {
    return Form(
      key: phoneNumberFormGlobalKey,
      child: Column(
        children: [
          PhoneNumberTextFieldComponent.phoneNumberTextFieldComponent(
            context,
            phoneNumberController,
            null,
            "Your Phone Number",
            (String value) {
              if (value.length == 10) {
                FocusScope.of(context).unfocus();
              }
              context.read<PhoneNumberLoginCubit>().onChangedPhoneNumber(
                    value,
                  );
            },
            true,
            null,
          ),
          if (phoneNumberFormGlobalKey.currentState != null &&
              phoneNumberFormGlobalKey.currentState!.validate()) ...[
            SizedBox(
              height: 8 * SizeConfig.heightMultiplier,
            ),
            MobileAuthComponent.buttonWidget(
              context,
              state,
              phoneNumberController,
            ),
          ],
        ],
      ),
    );
  }

  static CustomFlatButton buttonWidget(
    BuildContext context,
    PhoneNumberLoginState state,
    TextEditingController phoneNumberController,
  ) {
    return CustomFlatButton(
      onpress: () {
        Navigator.popAndPushNamed(
          context,
          RouteName.SIGN_IN_OTP_VERIFICATION_SCREEN,
          arguments: SignInOTPVerification(
            '+91 ${phoneNumberController.text}',
          ),
        );
      },
      widget: getButtonWidget(
        context,
        state,
      ),
      buttonWidth: SizeConfig.widthMultiplier * 40,
      buttonHeight: SizeConfig.screenWidth < 600
          ? 16 * SizeConfig.widthMultiplier
          : 11.5 * SizeConfig.widthMultiplier,
    );
  }

  static Container getButtonWidget(
    BuildContext context,
    PhoneNumberLoginState state,
  ) {
    return Container(
      child: Center(
        child: Text(
          'Get OTP',
          style: subtitle1.copyWith(
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
      ),
    );
  }
}
