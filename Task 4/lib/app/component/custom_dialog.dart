import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:skcl_vms/app/component/typography.dart';

class CustomDialog {
  static alertDialog(
    BuildContext context,
    String heading,
    String errorMessage,
    Widget? acceptWidget,
    Widget? rejectWidget,
  ) {
    Widget defaultWidget(BuildContext dialogContext) {
      return TextButton(
        style: ButtonStyle(
          overlayColor:
              WidgetStateProperty.all(Theme.of(context).primaryColor),
        ),
        child: Text(
          "Try again",
          style: subtitle2.copyWith(
            color: Theme.of(context).primaryColor,
          ),
        ),
        onPressed: () {
          Navigator.of(dialogContext).pop();
        },
      );
    }

    List<Widget> actionWidgets(BuildContext context) {
      List<Widget> widgets = [];
      if (acceptWidget != null || rejectWidget != null) {
        if (acceptWidget != null) {
          widgets.add(acceptWidget);
        }
        if (rejectWidget != null) {
          widgets.add(rejectWidget);
        }
      } else {
        widgets.add(defaultWidget(context));
      }
      return widgets;
    }

    AlertDialog alert(BuildContext context) {
      return AlertDialog(
        title: Text(
          heading,
          style: headline6.copyWith(
              letterSpacing: 0, color: Theme.of(context).colorScheme.secondary),
        ),
        content: Text(errorMessage),
        actions: actionWidgets(context),
      );
    }

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return PopScope(
            canPop: false,
            child: alert(context));
      },
    );
  }

  static showExitPopup(BuildContext context) {
    return CustomDialog.exitDialog(context);
  }

  static exitDialog(BuildContext context) {
    return CustomDialog.alertDialog(
          context,
          'Confirmation',
          'Are you sure, you want to quit this application',
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(
              'No',
              style: bodyText1.copyWith(
                  color: Theme.of(context).colorScheme.surface),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
            onPressed: () async {
              exit(0);
            },
            child: Text(
              'Yes',
              style: bodyText1.copyWith(
                  color: Theme.of(context).colorScheme.surface),
            ),
          ),
        ) ??
        false;
  }

  static alertMessage(
    BuildContext context,
    String title,
    String description,
    bool rejectWidget,
    String acceptButtonText,
    String? rejectButtonText,
    Function acceptOnPress,
    Function? rejectOnPress,
  ) {
    EasyLoading.dismiss();
    CustomDialog.alertDialog(
      context,
      title,
      description,
      rejectWidget == true
          ? ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
              ),
              onPressed: () => {
                Navigator.pop(context),
                if (rejectOnPress != null) rejectOnPress(),
              },
              child: Text(
                rejectButtonText ?? '',
                style: bodyText1.copyWith(
                  color: Theme.of(context).colorScheme.surface,
                ),
              ),
            )
          : null,
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        onPressed: () => {
          Navigator.pop(context),
          acceptOnPress(),
        },
        child: Text(
          acceptButtonText,
          style: bodyText1.copyWith(
            color: Theme.of(context).colorScheme.surface,
          ),
        ),
      ),
    );
  }
}
