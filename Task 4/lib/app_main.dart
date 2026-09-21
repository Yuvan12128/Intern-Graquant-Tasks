import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:skcl_vms/app_container.dart';
import 'package:skcl_vms/app/component/custom_progess_indicator.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart' show PlatformDispatcher, kDebugMode;
import 'package:skcl_vms/app/model/app_config.dart';
import 'package:skcl_vms/data/graphql/client.dart';
import 'package:skcl_vms/logic/simple_bloc_observer.dart';
import 'package:graphql/client.dart';

void appMain(AppConfig appConfig) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  GetIt.instance.registerSingleton<GraphQLClient>(
    GraphQLService(appConfig.plugzmartGraphqlApiBaseUrl).getGqlClient(),
  );
  GetIt.instance.registerSingleton<AppConfig>(appConfig);
  CustomProgressIndicator.configLoading(appConfig);
  Bloc.observer = const AppBlocObserver();
  FlutterError.onError = (errorDetails) {
    FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
  };
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };
  runApp(AppContainer());
  if (kDebugMode) {
    await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(false);
  } else {
    await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
  }
}
