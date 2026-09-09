import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:skcl_vms/app/log/util/log.dart';
import 'package:skcl_vms/presentation/profile/bloc/person_profile/person_profile_bloc.dart';

class ProfileUtility {
  static errorHandler(
    BuildContext context,
    PersonProfileState state,
    String fileName,
  ) {
    if (state.error != null) {
      EasyLoading.dismiss();
      Log.error(
        context,
        fileName,
        'onUpdateButtonClicked',
        state.error,
        'Person profile update',
        'Something went wrong!...',
        false,
        null,
        null,
      );
    }
  }

  static loading(
    PersonProfileState state,
  ) {
    if (state.loading == true) {
      EasyLoading.show();
    }

    if (state.loading == false) {
      EasyLoading.dismiss();
    }
  }

  static updatedSuccessfully(
    PersonProfileState state,
  ) {
    if (state.isupdated == true && state.loading == false) {
      EasyLoading.showSuccess('Updated Sucessfully');
      EasyLoading.dismiss();
    }
  }
}
