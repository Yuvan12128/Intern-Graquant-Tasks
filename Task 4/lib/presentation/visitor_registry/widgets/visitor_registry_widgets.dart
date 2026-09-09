import 'package:flutter/material.dart';
import 'package:skcl_vms/app/component/custom_button.dart';
import 'package:skcl_vms/app/component/typography.dart';
import 'package:skcl_vms/app/constant/size_config.dart';

class VisitorRegistryWidgets {
  static Widget visitorRegisterLeadingIcon(GlobalKey<ScaffoldState> key) {
    return IconButton(
      iconSize: SizeConfig.imageSizeMultiplier * 7,
      icon: const Icon(Icons.menu_rounded),
      onPressed: () {
        key.currentState!.openDrawer();
      },
    );
  }

  static CustomFlatButton customButton(
    BuildContext context,
    String title,
    Function() onPress,
  ) {
    return CustomFlatButton(
      onpress: onPress,
      buttonWidth: SizeConfig.widthMultiplier * 90,
      buttonHeight: SizeConfig.screenWidth < 600
          ? 18 * SizeConfig.widthMultiplier
          : 11.5 * SizeConfig.widthMultiplier,
      widget: Text(
        title,
        style: subtitle1.copyWith(
          color: Theme.of(context).colorScheme.tertiary,
          fontSize: 4.5 * SizeConfig.textMultiplier,
        ),
      ),
    );
    // return CustomElevatedButton(
    //   onPress: onPress,
    //   backgroundColor: Theme.of(context).colorScheme.primary,
    //   shadowColor: Theme.of(context).colorScheme.onPrimary.withOpacity(0.3),
    //   overlayColor: Theme.of(context).colorScheme.onPrimary.withOpacity(0.3),
    //   widget: Container(
    //     child: Center(
    //       child: Text(
    //         title,
    //         style: subtitle1.copyWith(
    //           color: Theme.of(context).colorScheme.onPrimary,
    //         ),
    //       ),
    //     ),
    //   ),
    //   fixedSize: Size(
    //     80 * SizeConfig.widthMultiplier,
    //     8 * SizeConfig.heightMultiplier,
    //   ),
    // );
  }
}
