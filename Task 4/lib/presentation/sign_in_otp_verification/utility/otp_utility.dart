import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:skcl_vms/app/component/custom_dialog.dart';
import 'package:skcl_vms/app/component/typography.dart';
import 'package:skcl_vms/app/constant/route_name.dart';
import 'package:skcl_vms/app/log/util/log.dart';
import 'package:skcl_vms/presentation/sign_in/bloc/sign_in_bloc.dart';

class OTPUtility {
  static void authComplete(
    SignInState state,
    BuildContext context,
  ) {
    if (state.isAuthCompleted) {
      EasyLoading.showSuccess("Logged in successfully");
      Navigator.pushNamedAndRemoveUntil(
        context,
        RouteName.VISITOR_REGISTRY_SCREEN,
        (route) => false,
      );
    }
  }

  static void errorStateHandler(
    SignInState state,
    BuildContext context,
    String fileName,
  ) {
    if (state.error != null) {
      Log.error(
        context,
        fileName,
        'Otp Signin',
        state.error,
        'Otp verification page',
        null,
        false,
        null,
        null,
      );
      CustomDialog.alertDialog(
        context,
        'Alert',
        'Your are not authorized to use this app!.. Please contact your administrator to grant access',
        TextButton(
          style: ButtonStyle(
            overlayColor:
                MaterialStateProperty.all(Theme.of(context).primaryColor),
          ),
          child: Text(
            "Ok",
            style: subtitle2.copyWith(
              color: Theme.of(context).primaryColor,
            ),
          ),
          onPressed: () {
            Navigator.of(context).pop();
            Navigator.popAndPushNamed(
              context,
              RouteName.SIGN_IN_SCREEN,
            );
          },
        ),
        null,
      );
    }
  }

  static String? validationFun(String? value) {
    if (value == null || value.isEmpty) {
      return 'Required field';
    } else if (value.length < 6) {
      return 'Enter correct OTP';
    }
    return null;
  }

  static void onChangeFun(value, context) {
    if (value.length == 6) {
      FocusScope.of(context).unfocus();
    }
  }

  static void onOTPEntered(
    BuildContext context,
    String otpCode,
    String verificationId,
    String fileName,
  ) async {
    try {
      context
          .read<SignInBloc>()
          .add(OnOtpSignInEvent(userIdToken: 'mock-token'));
    } catch (err) {
      Log.error(
        context,
        fileName,
        '_onOTPEntered',
        err,
        'Mobile number verificaiton',
        null,
        false,
        null,
        null,
      );
      EasyLoading.showError("Verification failed");
    }
  }
}
