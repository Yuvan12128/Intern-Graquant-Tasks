import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skcl_vms/app/constant/field_constant.dart';
import 'package:skcl_vms/app/log/util/log.dart';
import 'package:skcl_vms/presentation/setting_page/bloc/place_setting_name/place_setting_name_bloc.dart';

const String fileName = 'setting.utility.setting_utility.dart';

class SettingUtility {
  static void updateSetting(
    BuildContext context,
    FormGroup formGroup,
  ) async {
    try {
      context.read<PlaceSettingNameBloc>().add(
            AddPlaceSettingNameEvent(
              placeSettingName:
                  formGroup.control(FieldConstant.BUILDING_NAME).value,
              placeSettingId:
                  formGroup.control(FieldConstant.BUILDING_ID).value,
            ),
          );
    } catch (err) {
      Log.error(
        context,
        fileName,
        'updateSetting',
        err,
        'Error occured while updating setting',
        "Something went wrong!..",
        false,
        null,
        null,
      );
    }
  }

  static void placeNameBlocListener(
    BuildContext context,
    PlaceSettingNameState state,
    FormGroup formGroup,
  ) {
    try {
      if (state is PlaceSettingNameError) {
        EasyLoading.dismiss();
        Log.error(
          context,
          fileName,
          'SettingScreenBody',
          state.error,
          'Error occured while place name from local storage',
          "Something went wrong!..",
          false,
          null,
          null,
        );
      }

      if (state is GetPlaceSettingNameLoading) {
        EasyLoading.show();
      }

      if (state is PlaceSettingNameAdding) {
        EasyLoading.show();
      }

      if (state is PlaceSettingNameAdded) {
        EasyLoading.dismiss();
        EasyLoading.showSuccess("Building name updated");
      }

      if (state is GetPlaceSettingNameLoaded) {
        EasyLoading.dismiss();
        formGroup.control(FieldConstant.BUILDING_NAME).value =
            state.storedPlaceSettingName;
        formGroup.control(FieldConstant.BUILDING_ID).value =
            state.storedPlaceSettingId;
        formGroup.control(FieldConstant.BUILDING_NAME).markAsTouched();
        formGroup.control(FieldConstant.BUILDING_ID).markAsTouched();
      }
    } catch (err) {
      EasyLoading.dismiss();
      Log.error(
        context,
        fileName,
        'SettingScreenBody',
        err,
        'Error occured while place name from local storage',
        "Something went wrong!..",
        false,
        null,
        null,
      );
    }
  }
}
