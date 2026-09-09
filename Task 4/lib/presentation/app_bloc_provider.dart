import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skcl_vms/logic/bloc/app_auth/app_auth_bloc.dart';
import 'package:skcl_vms/logic/bloc/network/network_bloc.dart';
import 'package:skcl_vms/logic/bloc/theme/theme_bloc.dart';
import 'package:skcl_vms/logic/bloc/update_app/update_app_bloc.dart';
import 'package:skcl_vms/presentation/material_app.dart';
import 'package:skcl_vms/presentation/router.dart';

class AppBlocProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => ThemeBloc()..add(ThemeInitialEvent()),
        ),
        BlocProvider(
          create: (_) => AppAuthBloc(
            userAuthorizationBloc: AppRouter.userAuthorizationBloc,
          )..add(OnAppOpen()),
        ),
        BlocProvider(
          create: (_) => UpdateAppBloc()..add(AppVersionCheckEvent()),
        ),
        BlocProvider(
          create: (_) => NetworkBloc(),
        ),
      ],
      child: MaterialAPP(),
    );
  }
}
