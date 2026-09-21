import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:skcl_vms/app/component/typography.dart';
import 'package:skcl_vms/app/constant/size_config.dart';
import 'package:skcl_vms/app/model/app_config.dart';

const String fileName = 'network_error_screen.component.body.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppConfig appConfig = GetIt.instance<AppConfig>();
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "No Internet",
              // style: Theme.of(context).textTheme.headline5!.copyWith(
              //       color: Theme.of(context)
              //           .colorScheme
              //           .secondary
              //           .withValues(alpha: 0.8),
              //     ),
            ),
          ),
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
            height: SizeConfig.heightMultiplier * 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'Try:',
              style: subtitle2.copyWith(
                color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.5),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: ListTile(
              leading: Icon(
                Icons.circle_sharp,
                size: 10,
              ),
              title: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  'Checking the network cables, modem and router',
                  style: subtitle2.copyWith(
                    color: Theme.of(context)
                        .colorScheme
                        .secondary
                        .withValues(alpha: 0.5),
                  ),
                ),
              ),
              minLeadingWidth: 8,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: ListTile(
              leading: Icon(
                Icons.circle_sharp,
                size: 10,
              ),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  'Reconnecting to Wi-Fi',
                  style: subtitle2.copyWith(
                    color: Theme.of(context)
                        .colorScheme
                        .secondary
                        .withValues(alpha: 0.5),
                  ),
                ),
              ),
              minLeadingWidth: 8,
            ),
          ),
          Center(
            child: Text(
              'ERR_INTERNET_DISCONNECTED',
              textAlign: TextAlign.center,
              style: subtitle2.copyWith(
                color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
