import 'package:flutter/material.dart';
import 'package:skcl_vms/app/component/typography.dart';
import 'package:skcl_vms/app/constant/size_config.dart';

class SessionCard extends StatelessWidget {
  const SessionCard({
    Key? key,
    required this.headerText,
    required this.value,
  }) : super(key: key);

  final String headerText;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          headerText,
          style: bodyText1.copyWith(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        SizedBox(height: SizeConfig.heightMultiplier * 2),
        Text(
          value,
          style: subtitle2.copyWith(
            color: Theme.of(context).colorScheme.secondary,
          ),
          overflow: TextOverflow.ellipsis,
        ),
        // CustomButtonContainer(
        //   widget: Text(
        //     value,
        //     style: Theme.of(context).textTheme.subtitle2!.copyWith(
        //           color: PlugzmartAppColorLight.appbarTitleColor,
        //         ),
        //   ),
        //   buttonWidth: SizeConfig.widthMultiplier * 30,
        // ),
      ],
    );
  }
}
