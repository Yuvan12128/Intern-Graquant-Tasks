import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skcl_vms/app/component/custom_search_delegate.dart';
import 'package:skcl_vms/app/component/reactive_form_field.dart';
import 'package:skcl_vms/app/constant/field_constant.dart';
import 'package:skcl_vms/app/log/util/log.dart';
import 'package:skcl_vms/data/graphql/services/account/gql/account.graphql.dart';
import 'package:skcl_vms/data/model/search_delegate.dart';
import 'package:skcl_vms/logic/bloc/account/account_form_bloc.dart';

const String fileName = 'visitor_entry_form.utility.account_utility.dart';

class AccountUtility {
  static Future<List<SearchDelegateModel>> getAccountSearchDelegates(
      List<Query$Accounts$accounts$values?>? accounts) async {
    try {
      if (accounts != null && accounts.length > 0) {
        List<SearchDelegateModel> listSearchRoute = [];
        accounts.forEach((account) {
          final String? id = account?.id;
          final String? name = account?.name;
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

  static Future<void> accountBlocListenerUtility(
    BuildContext context,
    AccountFormState state,
    String header,
    FormGroup formGroup,
  ) async {
    try {
      if (state.accountLoading) {
        EasyLoading.show();
      }

      if (!state.accountLoading) {
        EasyLoading.dismiss();
        final List<SearchDelegateModel>? accountDelegates =
            state.accountDelegates;
        if (accountDelegates != null) {
          final dynamic buildingName = await showSearch(
            context: context,
            delegate: CustomSearchDelegate(
              searchLabel: 'Search $header',
              listItems: accountDelegates,
              context: context,
            ),
          );
          if (buildingName != null) {
            formGroup.control(FieldConstant.COMPANY_NAME).value =
                buildingName?.getName ?? '';
            formGroup.control(FieldConstant.COMPANY_ID).value =
                buildingName?.getId ?? '';
            formGroup.control(FieldConstant.COMPANY_NAME).markAsTouched();
            formGroup.control(FieldConstant.COMPANY_ID).markAsTouched();
          } else {
            EasyLoading.dismiss();
            // Log.error(
            //   context,
            //   fileName,
            //   'accountBlockListenerUtility',
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
          'accountBlockListenerUtility',
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

  static Widget accountNameTextField(
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
  ) {
    return BlocListener<AccountFormBloc, AccountFormState>(
      listener: (context, state) async {
        try {
          await AccountUtility.accountBlocListenerUtility(
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
            'accountNameTextField',
            err,
            'Error occured while getting account name list',
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
            false,
          ),
        ],
      ),
    );
  }
}
