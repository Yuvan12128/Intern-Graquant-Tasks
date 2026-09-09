import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:skcl_vms/app/model/app_config.dart';

class CustomProgressIndicator {
  static customCircularProgressIndicator(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: Theme.of(context).colorScheme.primary,
      ),
    );
  }

  static LinearProgressIndicator buildProgressBarTile(
      double height, Color backgroundColor, Color barColor) {
    return new LinearProgressIndicator(
        minHeight: height, backgroundColor: backgroundColor, color: barColor);
  }

  static void configLoading(
    AppConfig appConfig,
  ) {
    int colorCode = int.parse(appConfig.easyLoadingColor);
    EasyLoading.instance
      ..displayDuration = const Duration(milliseconds: 2000)
      ..indicatorWidget = CircularProgressIndicator(
        color: Color(colorCode),
      )
      ..loadingStyle = EasyLoadingStyle.dark
      ..indicatorColor = Color(colorCode)
      ..indicatorSize = 45.0
      ..radius = 10.0
      ..textStyle = TextStyle(
        fontFamily: 'Segoe',
        fontWeight: FontWeight.bold,
        fontSize: 14,
        color: Colors.white,
      )
      ..maskColor = Colors.blue.withOpacity(0.5)
      ..userInteractions = false
      ..dismissOnTap = false
      ..toastPosition = EasyLoadingToastPosition.bottom;
  }
}
