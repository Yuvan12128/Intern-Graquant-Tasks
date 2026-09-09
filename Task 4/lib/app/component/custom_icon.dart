import 'package:flutter/material.dart';
import 'package:skcl_vms/app/constant/size_config.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    Key? key,
    required this.icon,
    this.size,
    this.color,
    this.onTap,
    this.splashColor,
    this.alignment,
    this.containerWidth,
    this.containerHeight,
  }) : super(key: key);

  final IconData? icon;
  final double? size;
  final Color? color;
  final Function()? onTap;
  final Color? splashColor;
  final AlignmentGeometry? alignment;
  final double? containerWidth;
  final double? containerHeight;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: containerWidth ?? SizeConfig.widthMultiplier * 8,
        height: containerHeight ?? SizeConfig.heightMultiplier * 5,
        alignment: alignment,
        child: Icon(
          icon,
          size: size ?? SizeConfig.widthMultiplier * 7,
          color: color ?? Theme.of(context).colorScheme.primary,
        ),
      ),
      onTap: onTap,
      splashColor: splashColor ?? Theme.of(context).colorScheme.primary,
    );
  }
}
