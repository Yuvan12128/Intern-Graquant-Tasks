import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skcl_vms/app/component/custom_dialog.dart';
import 'package:skcl_vms/app/constant/route_name.dart';
import 'package:skcl_vms/app/log/constant/log_level.dart';
import 'package:skcl_vms/app/log/model/console_message.dart';
import 'package:skcl_vms/logic/bloc/app_auth/app_auth_bloc.dart';
import 'package:skcl_vms/data/constant/field_constant.dart';

class Log {
  static void debug(
    BuildContext? context,
    String fileName,
    String methodName,
    String message,
    String? identifier,
    String? alertMessage,
    Widget? acceptWidget,
    Widget? rejectWidget,
  ) {
    log(
      context,
      LogLevel.DEBUG,
      fileName,
      methodName,
      message,
      identifier,
      alertMessage,
      false,
      acceptWidget,
      rejectWidget,
    );
  }

  static void warn(
    BuildContext? context,
    String fileName,
    String methodName,
    String message,
    String? identifier,
    String? alertMessage,
    Widget? acceptWidget,
    Widget? rejectWidget,
  ) {
    log(
      context,
      LogLevel.WARN,
      fileName,
      methodName,
      message,
      identifier,
      alertMessage,
      false,
      acceptWidget,
      rejectWidget,
    );
  }

  static void error(
    BuildContext? context,
    String fileName,
    String methodName,
    dynamic error,
    String? identifier,
    String? alertMessage,
    bool doNavigateErrorScreen,
    Widget? acceptWidget,
    Widget? rejectWidget,
  ) {
    log(
      context,
      LogLevel.ERROR,
      fileName,
      methodName,
      error,
      identifier,
      alertMessage,
      doNavigateErrorScreen,
      acceptWidget,
      rejectWidget,
    );
  }

  static void log(
    BuildContext? context,
    LogLevel level,
    String fileName,
    String methodName,
    dynamic message,
    String? identifier,
    String? alertMessage,
    bool doNavigateErrorScreen,
    Widget? acceptWidget,
    Widget? rejectWidget,
  ) {
    final ConsoleMessage logMessage =
        getLogContent(fileName, methodName, message, identifier);

    if (LogLevel.ERROR == level) {
      FirebaseCrashlytics.instance.log(logMessage.toJson().toString());
      FirebaseCrashlytics.instance.recordError(
        message,
        StackTrace.fromString(logMessage.toJson().toString()),
        reason: 'A fatal error',
        fatal: true,
      );
    } else {
      FirebaseCrashlytics.instance.log(logMessage.toJson().toString());
    }

    if (context != null && doNavigateErrorScreen == true) {
      final bool isUnAuthorizedError =
          message.toString().contains(FieldConstant.UN_AUTHORIZED_ERROR);
      if (isUnAuthorizedError) {
        context.read<AppAuthBloc>().add(OnAppUserLoggedOut());
      } else {
        Navigator.of(context).pushNamed(RouteName.ERROR_SCREEN);
      }
    } else {
      if (context != null && alertMessage != null) {
        CustomDialog.alertDialog(
          context,
          'Alert',
          alertMessage,
          acceptWidget,
          rejectWidget,
        );
      }
    }
  }

  static ConsoleMessage getLogContent(
      String fileName, String methodName, dynamic message, String? identifier) {
    ConsoleMessage consoleMessage = new ConsoleMessage(
      fileName: fileName,
      methodName: methodName,
      message: message,
      identifier: identifier,
    );
    return consoleMessage;
  }
}
