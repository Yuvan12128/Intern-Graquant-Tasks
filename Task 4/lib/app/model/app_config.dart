import 'package:flutter/material.dart';

class AppConfig {
  final String flavorName;
  final String plugzmartGraphqlApiBaseUrl;
  final String appName;
  final ThemeData lightThemeData;
  final ThemeData darkThemeData;
  final String errorImage;
  final String easyLoadingColor;

  AppConfig({
    required this.flavorName,
    required this.plugzmartGraphqlApiBaseUrl,
    required this.appName,
    required this.lightThemeData,
    required this.darkThemeData,
    required this.errorImage,
    required this.easyLoadingColor,
  });
}
