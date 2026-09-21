import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skcl_vms/app/constant/enum/auth_status.dart';
import 'package:skcl_vms/logic/bloc/app_auth/app_auth_bloc.dart';
import 'package:skcl_vms/presentation/sign_in/sign_in_screen.dart';
import 'package:skcl_vms/presentation/splash/splash_screen.dart';
import 'package:skcl_vms/presentation/visitor_registry/visitor_registry_screen.dart';

const String fileName = 'material_app_home.dart';

class MaterialAppHome extends StatefulWidget {
  const MaterialAppHome({Key? key}) : super(key: key);

  @override
  State<MaterialAppHome> createState() => _MaterialAppHomeState();
}

class _MaterialAppHomeState extends State<MaterialAppHome> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppAuthBloc, AppAuthState>(
      builder: (context, state) {
        switch (state.status) {
          case AuthStatus.SIGNEDIN:
            return VisitorRegistryScreen();
          case AuthStatus.NOTSIGNEDIN:
            return SignInScreen();
          case AuthStatus.LOGOUT:
            return SignInScreen();
          case AuthStatus.NOTDETERMINED:
            return SignInScreen();
          case AuthStatus.LOADING:
            return SplashScreen();
          default:
            return SplashScreen();
        }
      },
    );
  }
}
