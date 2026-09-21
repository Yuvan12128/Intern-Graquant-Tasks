import 'package:flutter/material.dart';
import 'package:skcl_vms/app/component/typography.dart';
import 'package:skcl_vms/app/constant/size_config.dart';

AppBar tabScreenAppBar(
  BuildContext context,
  String appbarTitle,
  String tabBarTextFirst,
  String tabBarTextSecond,
) {
  return AppBar(
    title: Text(
      appbarTitle,
    ),
    titleTextStyle:
        headline6.copyWith(color: Theme.of(context).colorScheme.secondary),
    toolbarHeight: SizeConfig.screenWidth < 600 ? 50 : 100,
    automaticallyImplyLeading: false,
    leading: IconButton(
      iconSize: SizeConfig.imageSizeMultiplier * 7,
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    backgroundColor: Theme.of(context).colorScheme.surface,
    actions: [
      IconButton(
        iconSize: SizeConfig.imageSizeMultiplier * 7,
        icon: const Icon(Icons.close_rounded),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    ],
    bottom: TabBar(
      labelStyle: subtitle1,
      tabs: [
        Tab(
          text: tabBarTextFirst,
          height: 10 * SizeConfig.widthMultiplier,
        ),
        Tab(
          text: tabBarTextSecond,
          height: 10 * SizeConfig.widthMultiplier,
        ),
      ],
    ),
  );
}
