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
import 'package:skcl_vms/presentation/visitor_entry_form/bloc/account/account_name_bloc.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/bloc/block/block_name_bloc.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/bloc/floor/floor_name_bloc.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/bloc/visitor_form/visitor_form_bloc.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/model/account_floor_detail.dart';

const String fileName = 'visitor_entry_form.utility.place_utility.dart';

class AccountUtility {
  static Future<List<SearchDelegateModel>> getAccountSearchDelegates(
      Iterable<String?>? accounts) async {
    try {
      if (accounts != null && accounts.length > 0) {
        List<SearchDelegateModel> listSearchRoute = [];
        accounts.forEach((account) {
          final String? id = account;
          final String? name = account;
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
        throw new Exception('Accounts return null value');
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

  static Future<void> blockAndFloorBuilder(
    BuildContext context,
    String? accountName,
    AccountNameLoaded state,
    FormGroup formGroup,
  ) async {
    try {
      final Map<String, Map<int, AccountFloorDetail>>? blockNameMap =
          AccountUtility.getBlockNameMap(
        accountName!,
        state.accountNameMap,
      );
      context
          .read<BlockNameBloc>()
          .add(BlockNameMapUpdateEvent(blockNameMap: blockNameMap));
      Iterable<String>? blockNames = blockNameMap?.keys;
      if (blockNameMap != null &&
          blockNames != null &&
          blockNames.length == 1) {
        String blockName = blockNames.first;
        formGroup.control(FieldConstant.BLOCK_NAME).value = blockName;
        formGroup.control(FieldConstant.BLOCK_NAME).markAsTouched();
        Map<int, AccountFloorDetail>? floorNameMap = blockNameMap[blockName];
        Iterable<int>? floorNames = floorNameMap?.keys;
        context
            .read<FloorNameBloc>()
            .add(FloorNameMapUpdateEvent(floorNameMap: floorNameMap));
        if (floorNameMap != null &&
            floorNames != null &&
            floorNames.length == 1) {
          int floorNo = floorNames.first;
          AccountFloorDetail? accountFloorDetail = floorNameMap[floorNo];
          context.read<ContactNameBloc>().add(ContactNameUpdateEvent(
                contactList: accountFloorDetail?.contactPersons,
              ));
          formGroup.control(FieldConstant.ACCOUNT_FLOOR_ID).value =
              accountFloorDetail?.accountFloorId;
          formGroup.control(FieldConstant.ACCOUNT_FLOOR_ID).markAsTouched();
          formGroup.control(FieldConstant.FLOOR_NO).value = floorNo.toString();
          formGroup.control(FieldConstant.FLOOR_NO).markAsTouched();
        } else {
          context.read<VisitorFormBloc>().add(
                VisitorFormEntryShowFloorTextFieldEvent(
                  showFloorTextField: true,
                ),
              );
        }
      } else {
        context.read<VisitorFormBloc>().add(
              VisitorFormEntryShowBlockTextFieldEvent(
                showBlockTextField: true,
              ),
            );
      }
    } catch (err) {
      throw err;
    }
  }

  static Map<String, Map<String, Map<int, AccountFloorDetail>>>
      getAccountNameMap(
    List<Query$Accounts$accounts$values?> gqlAccountsValues,
    String? buildingName,
  ) {
    Map<String, Map<String, Map<int, AccountFloorDetail>>> accountNameMap =
        new Map();
    gqlAccountsValues.forEach((account) {
      String accountName = account?.name ?? '';
      Map<String, Map<int, AccountFloorDetail>> blockMap =
          new Map<String, Map<int, AccountFloorDetail>>();
      account?.places?.forEach((place) {
        List<Query$Accounts$accounts$values$places$blocks?>? blocks =
            place?.blocks;
        if (buildingName != null) {
          if (place?.name != null && place?.name == buildingName) {
            accountBlockUtility(blocks, blockMap);
          }
        } else {
          accountBlockUtility(blocks, blockMap);
        }
      });
      if (blockMap.isNotEmpty) {
        Map<String, Map<String, Map<int, AccountFloorDetail>>>
            tempAccountNameMap = {
          accountName: blockMap,
        };
        accountNameMap.addAll(tempAccountNameMap);
      }
    });
    return accountNameMap;
  }

  static void accountBlockUtility(
    List<Query$Accounts$accounts$values$places$blocks?>? blocks,
    Map<String, Map<int, AccountFloorDetail>> blockMap,
  ) {
    if (blocks != null) {
      blocks.forEach((block) {
        String? blockName = block?.name;
        if (blockName != null) {
          List<Query$Accounts$accounts$values$places$blocks$floors?>? floors =
              block?.floors;
          Map<int, AccountFloorDetail> accountFloorDetailMap =
              Map<int, AccountFloorDetail>();
          if (floors != null) {
            floors.forEach((floor) {
              int? floorNo = floor?.no;
              String? accountFloorId = floor?.accountFloorId;
              List<Query$Accounts$accounts$values$places$blocks$floors$persons?>?
                  contactPersons = floor?.persons;
              if (floorNo != null && accountFloorId != null) {
                Map<int, AccountFloorDetail> tempFloorDetail = {
                  floorNo: new AccountFloorDetail(
                    contactPersons,
                    accountFloorId,
                  )
                };
                accountFloorDetailMap.addAll(tempFloorDetail);
              }
            });
          }
          if (accountFloorDetailMap.isNotEmpty) {
            Map<String, Map<int, AccountFloorDetail>> tempBlocks = {
              blockName: accountFloorDetailMap,
            };
            blockMap.addAll(tempBlocks);
          }
        }
      });
    }
  }

  static Future<void> accountBlocListenerUtility(
    BuildContext context,
    AccountNameState state,
    String header,
    FormGroup formGroup,
  ) async {
    try {
      if (state is AccountNameLoading) {
        EasyLoading.show();
      }

      if (state is AccountNameLoaded) {
        EasyLoading.dismiss();
        final List<SearchDelegateModel>? accountDelegates = state.accounts;
        if (accountDelegates != null) {
          final dynamic accountName = await showSearch(
            context: context,
            delegate: CustomSearchDelegate(
              searchLabel: 'Search $header',
              listItems: accountDelegates,
              context: context,
            ),
          );
          if (accountName != null) {
            await blockAndFloorBuilder(
              context,
              accountName?.getName.toString(),
              state,
              formGroup,
            );
            formGroup.control(FieldConstant.COMPANY_NAME).value =
                accountName?.getName ?? '';
            formGroup.control(FieldConstant.COMPANY_NAME).markAsTouched();
          } else {
            EasyLoading.dismiss();
            EasyLoading.showInfo('Please choose company name');
            // Log.error(
            //   context,
            //   fileName,
            //   'accountBlockListenerUtility',
            //   new Exception("Account Name is null"),
            //   'Error occured while getting account name list',
            //   "Please enter valid company name",
            //   false,
            //   null,
            //   null,
            // );
          }
        }
      }

      if (state is AccountNameError) {
        EasyLoading.dismiss();
        Log.error(
          context,
          fileName,
          'accountBlockListenerUtility',
          state.error,
          'Error occured while getting account name list',
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
