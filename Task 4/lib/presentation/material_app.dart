import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get_it/get_it.dart';
import 'package:skcl_vms/app/model/app_config.dart';
import 'package:skcl_vms/logic/bloc/theme/theme_bloc.dart';
import 'package:skcl_vms/presentation/material_app_home.dart';
import 'package:skcl_vms/presentation/router.dart';

const String fileName = 'presentation/app_root.dart';

class MaterialAPP extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MaterialAPPState();
}

class _MaterialAPPState extends State<MaterialAPP> {
  final _navigatorKey = GlobalKey<NavigatorState>();
  AppConfig appConfig = GetIt.instance<AppConfig>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return MaterialApp(
          navigatorKey: _navigatorKey,
          debugShowCheckedModeBanner: false,
          title: 'skcl_vms',
          themeMode: state.themeMode,
          theme: appConfig.lightThemeData,
          darkTheme: appConfig.darkThemeData,
          onGenerateRoute: AppRouter.generateRoute,
          builder: EasyLoading.init(),
          home: MaterialAppHome(),
        );
      },
    );
  }
}
