import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skcl_vms/app/component/custom_search_delegate.dart';
import 'package:skcl_vms/app/component/reactive_form_field.dart';
import 'package:skcl_vms/app/constant/field_constant.dart';
import 'package:skcl_vms/app/log/util/log.dart';
import 'package:skcl_vms/data/graphql/services/account/gql/account.graphql.dart';
import 'package:skcl_vms/data/graphql/services/place/gql/place.graphql.dart';
import 'package:skcl_vms/data/model/search_delegate.dart';
import 'package:skcl_vms/logic/bloc/place/place_form_bloc.dart';

const String fileName = 'visitor_entry_form.utility.place_utility.dart';

class PlaceUtility {
  static Future<List<SearchDelegateModel>> getPlaceSearchDelegates(
      List<Query$Places$places$values?>? places) async {
    try {
      if (places != null && places.length > 0) {
        List<SearchDelegateModel> listSearchRoute = [];
        places.forEach((place) {
          final String? id = place?.id;
          final String? name = place?.name;
          if (id != null && name != null) {
            listSearchRoute.add(
              SearchDelegateModel(
                id: id,
                name: name,
              ),
            );
          }
        });
        return listSearchRoute;
      } else {
        throw new Exception('Places return null value');
      }
    } catch (err) {
      throw err;
    }
  }

  static Future<List<SearchDelegateModel>> getPlaceSearchDelegatesFromAccounts(
      List<Query$Accounts$accounts$values?>? accounts) async {
    try {
      if (accounts != null && accounts.length > 0) {
        List<SearchDelegateModel> listSearchRoute = [];
        int i = 0;
        accounts.forEach((account) {
          account?.places?.forEach((place) {
            i = i + 1;
            final String? id = i.toString();
            final String? name = place?.name;
            if (id != null && name != null) {
              listSearchRoute.add(
                SearchDelegateModel(
                  id: id,
                  name: name,
                ),
              );
            }
          });
        });
        return listSearchRoute;
      } else {
        throw new Exception('Places return null value');
      }
    } catch (err) {
      throw err;
    }
  }

  static Future<void> placeBlocListenerUtility(
    BuildContext context,
    PlaceFormState state,
    String header,
    FormGroup formGroup,
  ) async {
    try {
      if (state.placeLoading) {
        EasyLoading.show();
      }

      if (!state.placeLoading) {
        EasyLoading.dismiss();
        final List<SearchDelegateModel>? placeDelegates = state.placeDelegates;
        if (placeDelegates != null) {
          final dynamic buildingName = await showSearch(
            context: context,
            delegate: CustomSearchDelegate(
              searchLabel: 'Search $header',
              listItems: placeDelegates,
              context: context,
            ),
          );
          if (buildingName != null) {
            formGroup.control(FieldConstant.BUILDING_NAME).value =
                buildingName?.getName ?? '';
            formGroup.control(FieldConstant.BUILDING_ID).value =
                buildingName?.getId ?? '';
            formGroup.control(FieldConstant.BUILDING_NAME).markAsTouched();
            formGroup.control(FieldConstant.BUILDING_ID).markAsTouched();
          } else {
            EasyLoading.dismiss();
            EasyLoading.showInfo('Please choose building name');
            // Log.error(
            //   context,
            //   fileName,
            //   'placeBlockListenerUtility',
            //   new Exception("Building Name is null"),
            //   'Error occured while getting building name list',
            //   null,
            //   false,
            //   null,
            //   null,
            // );
          }
        }
      }

      if (state.error != null) {
        EasyLoading.dismiss();
        Log.error(
          context,
          fileName,
          'placeBlockListenerUtility',
          state.error,
          'Error occured while getting building name list',
          "Something went wrong!..",
          false,
          null,
          null,
        );
      }
    } catch (err) {
      throw err;
    }
  }

  static Widget placeNameTextField(
    BuildContext context,
    String header,
    FormGroup formGroup,
    String formControllerName,
    TextInputType? keyboardType,
    int? maxLength,
    Map<String, ValidationMessageFunction>? validationMessages,
    Widget? prefixIcon,
    Function(FormControl<Object?> control)? onPress,
    bool? readOnly,
    bool mandatoryField,
  ) {
    return BlocListener<PlaceFormBloc, PlaceFormState>(
      listener: (context, state) async {
        try {
          await PlaceUtility.placeBlocListenerUtility(
            context,
            state,
            header,
            formGroup,
          );
        } catch (err) {
          EasyLoading.dismiss();
          Log.error(
            context,
            fileName,
            'placeNameTextField',
            err,
            'Error occured while getting building name list',
            "Something went wrong!..",
            false,
            null,
            null,
          );
        }
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...reactiveFormTextField(
            context,
            header,
            formGroup,
            formControllerName,
            keyboardType,
            maxLength,
            validationMessages,
            prefixIcon,
            onPress,
            readOnly,
            mandatoryField,
          ),
        ],
      ),
    );
  }
}
