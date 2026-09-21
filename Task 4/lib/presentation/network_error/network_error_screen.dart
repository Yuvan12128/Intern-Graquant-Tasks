import 'package:flutter/material.dart';
import 'package:skcl_vms/app/component/custom_dialog.dart';
import 'package:skcl_vms/app/component/typography.dart';
import 'package:skcl_vms/presentation/network_error/widgets/body.dart';

const String fileName = 'network_error.screen';

class NetworkErrorScreen extends StatelessWidget {
  const NetworkErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop, result) {
          if (!didPop) {
            CustomDialog.alertDialog(
              context,
              'No Internet',
              'Please connect your internet',
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                ),
                onPressed: () => Navigator.of(context).pop(),
                child: Text(
                  'Close',
                  style: bodyText1.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              null,
            );
          }
        },
        child: Body(),
      ),
    );
  }
}
