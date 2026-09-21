import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skcl_vms/app/constant/field_constant.dart';
import 'package:skcl_vms/app/log/util/log.dart';
import 'package:skcl_vms/data/model/account/account_filter.dart';
import 'package:skcl_vms/presentation/company_list/bloc/company_list/company_list_bloc.dart';
import 'package:skcl_vms/presentation/company_list/bloc/filter/company_list_filter_bloc.dart';

const String fileName = 'company_detail.utility.company_detail_utility';

class CompanyListUtility {
  static errorHandler(
    BuildContext context,
    CompanyListFilterState state,
    String fileName,
  ) {
    if (state.error != null) {
      Log.error(
        context,
        fileName,
        '_companyListFilter',
        state.error,
        'Company List filter',
        null,
        false,
        null,
        null,
      );
    }
  }

  static successHandler(
    BuildContext context,
    CompanyListFilterState state,
  ) {
    if (state.error == null) {
      Navigator.pop(context);
    }
  }

  static filterOnPress(
    BuildContext context,
    FormGroup? formGroup,
  ) {
    formGroup?.markAllAsTouched();
    context.read<CompanyListFilterBloc>().add(
          FilterEvent(
            formGroup: formGroup,
          ),
        );
  }

  static filterCancelOnPress(
    BuildContext context,
    FormGroup? formGroup,
  ) {
    formGroup?.control(FieldConstant.BUILDING_ID).value = null;
    formGroup?.control(FieldConstant.BUILDING_NAME).value = null;
    formGroup?.markAllAsTouched();
    context.read<CompanyListFilterBloc>().add(
          ClearFilterEvent(),
        );
  }

  static void filterBuilder(
    AccountFilter accountFilter,
    CompanyFilterEvent event,
  ) {
    accountFilter.setPlaceIdFilter = event.placeIdFilter;
  }

  static void clearBuilder(
    AccountFilter accountFilter,
    ClearCompanyFilterEvent event,
  ) {
    accountFilter.setPlaceIdFilter = null;
  }
}
