import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skcl_vms/app/component/custom_button.dart';
import 'package:skcl_vms/app/component/custom_icon_button.dart';
import 'package:skcl_vms/app/component/typography.dart';
import 'package:skcl_vms/app/constant/route_name.dart';
import 'package:skcl_vms/app/constant/size_config.dart';
import 'package:skcl_vms/presentation/company_list/bloc/filter/company_list_filter_bloc.dart';
import 'package:skcl_vms/presentation/company_list/utility/company_list_utility.dart';

class FilterComponent {
  static CustomFlatButton button(
    BuildContext context,
    String text,
    Color color,
    Function onPress,
  ) {
    return CustomFlatButton(
      buttonWidth: SizeConfig.widthMultiplier * 30,
      buttonHeight: SizeConfig.heightMultiplier * 5,
      color: color,
      onpress: () {
        onPress();
      },
      widget: Text(
        text,
        style: bodyText1.copyWith(
          color: Theme.of(context).colorScheme.surface,
        ),
      ),
    );
  }

  static Widget filterIcon(
    BuildContext context,
  ) {
    return BlocBuilder<CompanyListFilterBloc, CompanyListFilterState>(
      builder: (context, state) {
        bool isFilterApplied = true;
        if (state.placeIdFilter != null) {
          isFilterApplied = false;
        }
        return CustomIconButton(
          icon: Icons.filter_alt_sharp,
          isIconColor: isFilterApplied,
          onpress: () {
            Navigator.pushNamed(
              context,
              RouteName.COMPANY_FILTER_SCREEN,
            );
          },
        );
      },
    );
  }

  static Widget clearAllButton(
    BuildContext context,
    FormGroup? formGroup,
  ) {
    return TextButton(
      onPressed: () {
        CompanyListUtility.filterCancelOnPress(
          context,
          formGroup,
        );
      },
      child: BlocBuilder<CompanyListFilterBloc, CompanyListFilterState>(
        builder: (context, state) {
          bool isFilterApplied = false;
          if (state.placeIdFilter != null) {
            isFilterApplied = true;
          }
          return Text(
            'Clear All',
            style: subtitle1.copyWith(
              color: isFilterApplied
                  ? Theme.of(context).colorScheme.error
                  : Theme.of(context).colorScheme.secondary,
            ),
          );
        },
      ),
    );
  }

  static Widget filterOkButton(
    BuildContext context,
    FormGroup? formGroup,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: FilterComponent.button(
        context,
        'Ok',
        Theme.of(context).colorScheme.primary,
        () {
          CompanyListUtility.filterOnPress(
            context,
            formGroup,
          );
        },
      ),
    );
  }
}
