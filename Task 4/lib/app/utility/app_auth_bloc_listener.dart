import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skcl_vms/app/constant/enum/auth_status.dart';
import 'package:skcl_vms/app/constant/route_name.dart';
import 'package:skcl_vms/app/log/util/log.dart';
import 'package:skcl_vms/logic/bloc/app_auth/app_auth_bloc.dart';

BlocListener appAuthBlocListener(
  String fileName,
) {
  return BlocListener<AppAuthBloc, AppAuthState>(
    listener: (context, state) {
      if (state.status == AuthStatus.LOGOUT) {
        Navigator.pushNamedAndRemoveUntil(
            context, RouteName.SIGN_IN_SCREEN, (route) => false);
      }
      if (state.status == AuthStatus.SIGNEDIN) {
        Navigator.pushNamedAndRemoveUntil(
            context, RouteName.VISITOR_REGISTRY_SCREEN, (route) => false);
      }
      if (state is AppAuthStateError) {
        if (state.error != null) {
          Log.error(
            context,
            fileName,
            "_appAuthBlocListener",
            state.error,
            'App auth bloc listener',
            null,
            false,
            null,
            null,
          );
        }
      }
    },
  );
}
