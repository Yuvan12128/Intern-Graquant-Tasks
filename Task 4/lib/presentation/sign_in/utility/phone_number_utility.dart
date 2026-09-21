import 'package:flutter/material.dart';
import 'package:skcl_vms/app/log/util/log.dart';
import 'package:skcl_vms/presentation/sign_in/cubit/phone_number_login/phone_number_login_cubit.dart';

class PhoneNumberUtility {
  static phoneNumberErrorState(
    BuildContext context,
    PhoneNumberLoginState state,
    String fileName,
  ) {
    if (state is PhoneNumberLoginErrorState) {
      Log.error(
        context,
        fileName,
        "Phone number Login error state",
        state.error,
        'Phone number Error',
        null,
        false,
        null,
        null,
      );
    }
  }
}
