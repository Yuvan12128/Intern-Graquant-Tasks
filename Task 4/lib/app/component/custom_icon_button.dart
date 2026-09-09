import 'package:flutter/material.dart';
import 'package:skcl_vms/app/constant/size_config.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    required this.onpress,
    required this.icon,
    required this.isIconColor,
  }) : super(key: key);

  final Function onpress;
  final IconData icon;
  final bool isIconColor;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: SizeConfig.imageSizeMultiplier * 7,
      icon: Icon(icon),
      color: isIconColor
          ? Theme.of(context).colorScheme.primary
          : Theme.of(context).colorScheme.error,
      onPressed: () {
        onpress();
      },
    );
  }
}
