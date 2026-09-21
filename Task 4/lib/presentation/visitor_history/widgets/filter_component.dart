import 'package:dart_date/dart_date.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skcl_vms/app/component/custom_button.dart';
import 'package:skcl_vms/app/component/custom_icon_button.dart';
import 'package:skcl_vms/app/component/typography.dart';
import 'package:skcl_vms/app/constant/field_constant.dart';
import 'package:skcl_vms/app/constant/route_name.dart';
import 'package:skcl_vms/app/constant/size_config.dart';
import 'package:skcl_vms/presentation/visitor_history/bloc/filter/visitor_history_filter_bloc.dart';
import 'package:skcl_vms/presentation/visitor_history/utility/visitor_history_utility.dart';

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
    return BlocBuilder<VisitorHistoryFilterBloc, VisitorHistoryFilterState>(
      builder: (context, state) {
        bool isFilterApplied = true;
        if (state.accountIdFilter != null ||
            state.placeIdFilter != null ||
            state.visitorTypeFilter != null ||
            state.startDate != null ||
            state.endDate != null ||
            state.meetingTypeFilter != null) {
          isFilterApplied = false;
        }
        return CustomIconButton(
          icon: Icons.filter_alt_sharp,
          isIconColor: isFilterApplied,
          onpress: () {
            Navigator.pushNamed(
              context,
              RouteName.VISITOR_HISTORY_FILTER_SCREEN,
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
        VisitorHistoryUtility.filterCancelOnPress(
          context,
          formGroup,
        );
      },
      child: BlocBuilder<VisitorHistoryFilterBloc, VisitorHistoryFilterState>(
        builder: (context, state) {
          bool isFilterApplied = false;
          if (state.placeIdFilter != null ||
              state.accountIdFilter != null ||
              state.meetingTypeFilter != null ||
              state.visitorTypeFilter != null ||
              state.startDate != null ||
              state.endDate != null) {
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
          VisitorHistoryUtility.filterOnPress(
            context,
            formGroup,
          );
        },
      ),
    );
  }

  static dynamic Function(FormControl<Object?>)? dateRangeFilterFunctionBuilder(
    BuildContext context,
    FormGroup formGroup,
  ) {
    return (FormControl<Object?> control) async {
      DateTimeRange? dateRangeFilter = await showDateRangePicker(
        context: context,
        initialEntryMode: DatePickerEntryMode.calendarOnly,
        initialDateRange: DateTimeRange(
          start: DateTime.now(),
          end: DateTime.now(),
        ),
        firstDate: DateTime(2023),
        lastDate: DateTime(
          DateTime.now().year,
          DateTime.now().month + 2,
        ),
      );
      if (dateRangeFilter != null) {
        final String startDate =
            DateTime.parse(dateRangeFilter.start.toString())
                .format('yyyy-MM-dd')
                .toString();
        final String endDate = DateTime.parse(dateRangeFilter.end.toString())
            .format('yyyy-MM-dd')
            .toString();
        formGroup.control(FieldConstant.START_DATE).value = startDate;
        formGroup.control(FieldConstant.END_DATE).value = endDate;
        formGroup.control(FieldConstant.DATE).value = "$startDate - $endDate";
        formGroup.control(FieldConstant.START_DATE).markAsTouched();
        formGroup.control(FieldConstant.END_DATE).markAsTouched();
        formGroup.control(FieldConstant.DATE).markAsTouched();
      }
    };
  }
}
