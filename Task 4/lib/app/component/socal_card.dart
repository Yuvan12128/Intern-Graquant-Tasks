import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constant/size_config.dart';

class SocalCard extends StatelessWidget {
  const SocalCard({
    Key? key,
    required this.icon,
    required this.onPress,
  }) : super(key: key);

  final String icon;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).colorScheme.primary,
          ),
          borderRadius: BorderRadius.circular(10.0),
          shape: BoxShape.rectangle,
        ),
        child: IconButton(
          splashRadius: 25,
          icon: SvgPicture.asset(
            icon,
            height: 7 * SizeConfig.imageSizeMultiplier,
            width: 7 * SizeConfig.imageSizeMultiplier,
          ),
          onPressed: () {
            onPress();
          },
        ),
      ),
    );
  }
}
