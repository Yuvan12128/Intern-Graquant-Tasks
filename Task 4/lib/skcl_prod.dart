import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:skcl_vms/app/model/app_config.dart';
import 'package:skcl_vms/app_main.dart';
import 'package:skcl_vms/env_property/skcl/theme/skcl_app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final String file =
      await rootBundle.loadString('lib/env_property/skcl/skcl_prod.json');
  final prodEnvProperties = await json.decode(file);
  var configuredApp = AppConfig(
    flavorName: prodEnvProperties['flavourName'],
    plugzmartGraphqlApiBaseUrl: prodEnvProperties['plugzmartGraphqlApiBaseUrl'],
    appName: prodEnvProperties['appName'],
    lightThemeData: SKCLAppTheme.lightTheme,
    darkThemeData: SKCLAppTheme.darkTheme,
    errorImage: prodEnvProperties['errorImage'],
    easyLoadingColor: prodEnvProperties['easyLoadingColor'],
  );
  appMain(configuredApp);
}
