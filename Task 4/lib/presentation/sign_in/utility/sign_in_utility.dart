import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:skcl_vms/app/log/util/log.dart';
import 'package:skcl_vms/presentation/sign_in/bloc/sign_in_bloc.dart';

class SignInUtility {
  // static void authComplete(
  //   SignInState state,
  //   BuildContext context,
  // ) {
  //   if (state.lifeState != null) {
  //     if (state.lifeState == EnumLifeState.active && state.isAuthCompleted) {
  //       // Navigator.pushNamedAndRemoveUntil(
  //       //     context, RouteName.WELCOME_SCREEN, (route) => false);
  //     }
  //   }
  // }

  static void errorStateHandler(
    SignInState state,
    BuildContext context,
    String fileName,
  ) {
    if (state.error != null) {
      EasyLoading.dismiss();
      Log.error(
        context,
        fileName,
        'Google Signin',
        state.error,
        'Signin Page',
        null,
        false,
        null,
        null,
      );
      EasyLoading.showError('Login Failed');
    }
  }
}
