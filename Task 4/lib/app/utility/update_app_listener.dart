import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_version_plus/model/version_status.dart';
import 'package:skcl_vms/app/component/update_dialog.dart';
import 'package:skcl_vms/app/log/util/log.dart';
import 'package:skcl_vms/logic/bloc/update_app/update_app_bloc.dart';

BlocListener updateHandler() {
  return BlocListener<UpdateAppBloc, UpdateAppState>(
    listener: (context, state) {
      final VersionStatus? status = state.status;
      if (status != null && status.canUpdate) {
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            if (Platform.isIOS) {
              return UpdateIOSDialog(
                currentVersion: status.localVersion,
                latestVersion: status.storeVersion,
                appLink: status.appStoreLink,
              );
            } else {
              return UpdateAndroidDialog(
                currentVersion: status.localVersion,
                latestVersion: status.storeVersion,
                appLink: status.appStoreLink,
              );
            }
          },
        );
      }
      if (state is UpdateMaybeLater || state is UpdateApp) {
        Navigator.pop(context);
      }
      if (state is UpdateAppErrorState) {
        if (state.error != null) {
          Log.error(
            context,
            'app_update.dart',
            'app_update_alert',
            state.error,
            'App update Alert error',
            null,
            false,
            null,
            null,
          );
        }
      }
    },
  );
}
