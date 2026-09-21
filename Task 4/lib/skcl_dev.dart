import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:skcl_vms/app/model/app_config.dart';
import 'package:skcl_vms/app_main.dart';
import 'package:skcl_vms/env_property/skcl/theme/skcl_app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final String file =
      await rootBundle.loadString('lib/env_property/skcl/skcl_dev.json');
  final devEnvProperties = await json.decode(file);
  var appConfig = AppConfig(
    flavorName: devEnvProperties['flavourName'],
    plugzmartGraphqlApiBaseUrl: devEnvProperties['plugzmartGraphqlApiBaseUrl'],
    appName: devEnvProperties['appName'],
    lightThemeData: SKCLAppTheme.lightTheme,
    darkThemeData: SKCLAppTheme.darkTheme,
    errorImage: devEnvProperties['errorImage'],
    easyLoadingColor: devEnvProperties['easyLoadingColor'],
  );
  appMain(appConfig);
}
