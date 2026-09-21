import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:skcl_vms/app/constant/route_name.dart';
import 'package:skcl_vms/app/log/util/log.dart';
import 'package:skcl_vms/logic/bloc/user_authorization/user_authorization_bloc.dart';

const String fileName = 'lib.app.utility.user_authorization_listener';

class UserAuthorizationListener {
  static userAuthorizationListener(
    BuildContext context,
    UserAuthorizationState userAuthorizationState,
  ) {
    if (userAuthorizationState is UserAuthorizationStateError) {
      Log.error(
        context,
        fileName,
        'userAuthorizationListener',
        userAuthorizationState.error,
        'User login authorization error',
        null,
        false,
        null,
        null,
      );
      Navigator.pushNamedAndRemoveUntil(
          context, RouteName.SIGN_IN_SCREEN, (route) => false);
      EasyLoading.showError(
          'Your are not authorized to use this app!.. Please contact your administrator to grant access');
    }
  }
}
