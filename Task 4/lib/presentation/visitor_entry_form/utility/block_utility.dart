import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skcl_vms/app/component/custom_search_delegate.dart';
import 'package:skcl_vms/app/constant/field_constant.dart';
import 'package:skcl_vms/app/log/util/log.dart';
import 'package:skcl_vms/data/model/search_delegate.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/bloc/block/block_name_bloc.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/bloc/floor/floor_name_bloc.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/model/account_floor_detail.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/utility/floor_utility.dart';

const String fileName = 'visitor_entry_form.utility.place_utility.dart';

class BlockUtility {
  static Future<List<SearchDelegateModel>> getBlockSearchDelegates(
      Iterable<String?>? blocks) async {
    try {
      if (blocks != null && blocks.length > 0) {
        List<SearchDelegateModel> listSearchRoute = [];
        blocks.forEach((block) {
          final String? id = block;
          final String? name = block;
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
        throw new Exception('Block return null value');
      }
    } catch (err) {
      throw err;
    }
  }

  static Map<String, Map<int, AccountFloorDetail>>? getBlockNameMap(
    String companyName,
    Map<String, Map<String, Map<int, AccountFloorDetail>>>? accountNameMap,
  ) {
    Map<String, Map<int, AccountFloorDetail>>? blockNameMap;
    if (accountNameMap != null) {
      blockNameMap = accountNameMap[companyName];
    }
    return blockNameMap;
  }

  static Future<void> blockFormHandler(
    BuildContext context,
    String blockName,
    BlockNameState state,
    FormGroup formGroup,
  ) async {
    try {
      final floorNameMap = FloorUtility.getFloorNameMap(
        blockName,
        state.blockNameMap,
      );
      context
          .read<FloorNameBloc>()
          .add(FloorNameMapUpdateEvent(floorNameMap: floorNameMap));
      formGroup.control(FieldConstant.BLOCK_NAME).value = blockName;
      formGroup.control(FieldConstant.BLOCK_NAME).markAsTouched();
    } catch (err) {
      throw err;
    }
  }

  static Future<void> blockBlocListenerUtility(
    BuildContext context,
    BlockNameState state,
    String header,
    FormGroup formGroup,
  ) async {
    try {
      if (state is BlockNameLoaded) {
        final List<SearchDelegateModel>? blockDelegates = state.blocks;
        if (blockDelegates != null) {
          if (blockDelegates.length > 1) {
            final dynamic blockName = await showSearch(
              context: context,
              delegate: CustomSearchDelegate(
                searchLabel: 'Search $header',
                listItems: blockDelegates,
                context: context,
              ),
            );
            if (blockName != null && blockName?.getName != null) {
              await blockFormHandler(
                context,
                blockName?.getName,
                state,
                formGroup,
              );
            } else {
              EasyLoading.showInfo('Please choose block name');
              // Log.error(
              //   context,
              //   fileName,
              //   'blockBlockListenerUtility',
              //   new Exception("Block Name is null"),
              //   'Error occured while getting block name list',
              //   "Please enter valid block name",
              //   false,
              //   null,
              //   null,
              // );
            }
          } else {
            await blockFormHandler(
                context, blockDelegates[0].getName, state, formGroup);
          }
        }
      }

      if (state is BlockNameError) {
        Log.error(
          context,
          fileName,
          'blockBlockListenerUtility',
          state.error,
          'Error occured while getting block name list',
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
