import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skcl_vms/app/component/custom_search_delegate.dart';
import 'package:skcl_vms/app/constant/field_constant.dart';
import 'package:skcl_vms/app/log/util/log.dart';
import 'package:skcl_vms/data/graphql/services/account/gql/account.graphql.dart';
import 'package:skcl_vms/data/model/search_delegate.dart';
import 'package:skcl_vms/presentation/company_contact/bloc/contact_name_bloc.dart';
import 'package:skcl_vms/presentation/company_contact/utility/contact_utility.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/bloc/floor/floor_name_bloc.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/model/account_floor_detail.dart';

const String fileName = 'visitor_entry_form.utility.floor_utility.dart';

class FloorUtility {
  static Future<List<SearchDelegateModel>> getFloorSearchDelegates(
      Iterable<int?>? floors) async {
    try {
      if (floors != null && floors.length > 0) {
        List<SearchDelegateModel> listSearchRoute = [];
        floors.forEach((floor) {
          final String? id = floor.toString();
          final String? name = floor.toString();
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
        throw new Exception('Floors return null value');
      }
    } catch (err) {
      throw err;
    }
  }

  static Map<int, AccountFloorDetail>? getFloorNameMap(
    String blockName,
    Map<String, Map<int, AccountFloorDetail>>? blockNameMap,
  ) {
    Map<int, AccountFloorDetail>? floorNameMap;
    if (blockNameMap != null) {
      floorNameMap = blockNameMap[blockName];
    }
    return floorNameMap;
  }

  static Future<void> floorFormHandler(
    BuildContext context,
    String floorNo,
    FloorNameState state,
    FormGroup formGroup,
  ) async {
    try {
      if (state.floorNameMap != null) {
        final List<
                Query$Accounts$accounts$values$places$blocks$floors$persons?>?
            contactList = ContactUtility.getContactList(
          floorNo,
          state.floorNameMap,
        );
        context
            .read<ContactNameBloc>()
            .add(ContactNameUpdateEvent(contactList: contactList));
        int floorNoValue = int.parse(floorNo);
        formGroup.control(FieldConstant.ACCOUNT_FLOOR_ID).value =
            state.floorNameMap![floorNoValue]?.accountFloorId;
        formGroup.control(FieldConstant.ACCOUNT_FLOOR_ID).markAsTouched();
        formGroup.control(FieldConstant.FLOOR_NO).value = floorNo;
        formGroup.control(FieldConstant.FLOOR_NO).markAsTouched();
      } else {
        throw new Exception(
            "Account floor id missing while updatind account floor form text field");
      }
    } catch (err) {
      throw err;
    }
  }

  static Future<void> floorBlocListenerUtility(
    BuildContext context,
    FloorNameState state,
    String header,
    FormGroup formGroup,
  ) async {
    try {
      if (state is FloorNameLoaded) {
        final List<SearchDelegateModel>? floorDelegates = state.floors;
        if (floorDelegates != null) {
          if (floorDelegates.length > 1) {
            final dynamic floorName = await showSearch(
              context: context,
              delegate: CustomSearchDelegate(
                searchLabel: 'Search $header',
                listItems: floorDelegates,
                context: context,
              ),
            );
            if (floorName != null && floorName?.getName != null) {
              await floorFormHandler(
                context,
                floorName?.getName,
                state,
                formGroup,
              );
            } else {
              EasyLoading.showInfo('Please choose floor no');
              // Log.error(
              //   context,
              //   fileName,
              //   'floorBlocListenerUtility',
              //   new Exception("Floor no is null"),
              //   'Error occured while getting floor list',
              //   "Please enter valid floor no",
              //   false,
              //   null,
              //   null,
              // );
            }
          } else {
            await floorFormHandler(
                context, floorDelegates[0].getName, state, formGroup);
          }
        }
      }

      if (state is FloorNameError) {
        Log.error(
          context,
          fileName,
          'floorBlocListenerUtility',
          state.error,
          'Error occured while getting floor list',
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
}
