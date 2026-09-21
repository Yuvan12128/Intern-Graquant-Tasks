import 'package:flutter/material.dart';
import 'package:skcl_vms/app/constant/images.dart';
import 'package:skcl_vms/app/constant/size_config.dart';

const String fileName = 'drawer.widgets.logo_container.dart';

class LogoContainer extends StatelessWidget {
  LogoContainer();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: SizeConfig.widthMultiplier * 50,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Theme.of(context).colorScheme.primary,
            width: 0.28 * SizeConfig.widthMultiplier,
          ),
        ),
      ),
      child: Image.asset(
        Images.logo_combined,
        fit: BoxFit.contain,
      ),
    );
  }
}
