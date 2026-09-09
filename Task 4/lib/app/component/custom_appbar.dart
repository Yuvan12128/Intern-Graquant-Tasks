import 'package:flutter/material.dart';
import 'package:skcl_vms/app/component/typography.dart';
import 'package:skcl_vms/app/constant/route_name.dart';
import 'package:skcl_vms/app/constant/size_config.dart';

class CustomAppBar {
  static List<Widget> _actionsIcon(
    BuildContext context,
    List<Widget>? actionIcons,
    bool defaultActionIconIsRequired,
  ) {
    return [
      if (actionIcons != null) ...[
        ...actionIcons,
      ],
      if (defaultActionIconIsRequired) ...[
        IconButton(
          iconSize: SizeConfig.imageSizeMultiplier * 7,
          icon: const Icon(Icons.close_rounded),
          onPressed: () {
            Navigator.of(context).pushNamedAndRemoveUntil(
                RouteName.VISITOR_REGISTRY_SCREEN, (route) => false);
          },
        ),
      ]
    ];
  }

  static Widget _leadingIcon(BuildContext context) {
    return IconButton(
      iconSize: SizeConfig.imageSizeMultiplier * 7,
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  static AppBar appBar(
    BuildContext context,
    String title,
    bool doRequiredLeadingIcon,
    Widget? leadingIcon,
    List<Widget>? actionIcons,
    bool defaultActionIconIsRequired,
  ) {
    return AppBar(
      title: Text(
        title,
      ),
      toolbarHeight: SizeConfig.screenWidth < 600 ? 50 : 100,
      actions: _actionsIcon(context, actionIcons, defaultActionIconIsRequired),
      titleTextStyle:
          headline6.copyWith(color: Theme.of(context).colorScheme.secondary),
      automaticallyImplyLeading: false,
      leading: doRequiredLeadingIcon
          ? leadingIcon != null
              ? leadingIcon
              : _leadingIcon(context)
          : null,
      backgroundColor: Theme.of(context).colorScheme.background,
    );
  }
}
