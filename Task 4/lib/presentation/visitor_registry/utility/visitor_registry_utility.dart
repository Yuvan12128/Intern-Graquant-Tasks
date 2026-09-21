import 'package:flutter/material.dart';
import 'package:skcl_vms/app/component/typography.dart';

const String fileName =
    'visitor_registry.utility.visitor_registry_utility.dart';

class VisitorRegistryUtility {
  static Widget buildingFetchTryAgainButton(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        overlayColor: WidgetStateProperty.all(Theme.of(context).primaryColor),
      ),
      child: Text(
        "Try again",
        style: subtitle2.copyWith(
          color: Theme.of(context).primaryColor,
        ),
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
  }

  // static Future<void> placeListener(
  //   BuildContext context,
  //   PlaceAllState state,
  // ) async {
  //   try {
  //     if (state.placeLoading) {
  //       EasyLoading.show();
  //     }

  //     if (!state.placeLoading) {
  //       EasyLoading.dismiss();
  //     }

  //     if (state.error != null) {
  //       EasyLoading.dismiss();
  //       Log.error(
  //         context,
  //         fileName,
  //         'placeListener',
  //         state.error,
  //         'Error occured while getting building name list',
  //         "Something went wrong!.. While getting place building details!",
  //         false,
  //         null,
  //         VisitorRegistryUtility.buildingFetchTryAgainButton(context),
  //       );
  //     }
  //   } catch (err) {
  //     EasyLoading.dismiss();
  //     Log.error(
  //       context,
  //       fileName,
  //       'placeListener',
  //       err,
  //       'Error occured while getting building name list',
  //       "Something went wrong!.. While getting place building details!",
  //       false,
  //       null,
  //       VisitorRegistryUtility.buildingFetchTryAgainButton(context),
  //     );
  //   }
  // }
}
