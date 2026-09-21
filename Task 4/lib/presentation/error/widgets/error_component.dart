import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:skcl_vms/app/component/typography.dart';
import 'package:skcl_vms/app/constant/size_config.dart';
import 'package:skcl_vms/app/model/app_config.dart';

class ErrorComponent {
  static Column errorComponent(BuildContext context, Function func) {
    AppConfig appConfig = GetIt.instance<AppConfig>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: double.infinity,
          height: SizeConfig.imageSizeMultiplier * 70,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(appConfig.errorImage),
              fit: BoxFit.cover,
              alignment: AlignmentDirectional(-0.6, 0),
            ),
          ),
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 10,
        ),
        Text(
          'Something went wrong!...',
          style: headline6.copyWith(
              color: Theme.of(context).colorScheme.secondary),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please ',
              style: subtitle1.copyWith(
                  color: Theme.of(context).colorScheme.secondary),
            ),
            InkWell(
              splashColor: Theme.of(context).colorScheme.primary,
              onTap: () {
                func();
              },
              child: Text(
                'Try again',
                style: subtitle1.copyWith(
                    color: Theme.of(context).colorScheme.primary),
              ),
            )
          ],
        ),
      ],
    );
  }
}
