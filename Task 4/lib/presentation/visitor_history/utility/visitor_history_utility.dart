import 'package:dart_date/dart_date.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skcl_vms/app/component/typography.dart';
import 'package:skcl_vms/app/constant/enum/meeting_type.dart';
import 'package:skcl_vms/app/constant/enum/visitor_type.dart';
import 'package:skcl_vms/app/constant/field_constant.dart';
import 'package:skcl_vms/app/log/util/log.dart';
import 'package:skcl_vms/app/utility/capitalize.dart';
import 'package:skcl_vms/data/model/visitor/visitor_filter.dart';
import 'package:skcl_vms/presentation/visitor_history/bloc/filter/visitor_history_filter_bloc.dart';
import 'package:skcl_vms/presentation/visitor_history/bloc/visitor_history/visitor_history_bloc.dart';

const String fileName = 'visitor_history.utility.visitor_history_utility';

class VisitorHistoryUtility {
  static errorHandler(
    BuildContext context,
    VisitorHistoryFilterState state,
    String fileName,
  ) {
    if (state.error != null) {
      Log.error(
        context,
        fileName,
        '_visitorHistoryFilter',
        state.error,
        'Visitor History filter',
        null,
        false,
        null,
        null,
      );
    }
  }

  static successHandler(
    BuildContext context,
    VisitorHistoryFilterState state,
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
    context.read<VisitorHistoryFilterBloc>().add(FilterEvent(
          formGroup: formGroup,
        ));
  }

  static filterCancelOnPress(
    BuildContext context,
    FormGroup? formGroup,
  ) {
    formGroup?.control(FieldConstant.BUILDING_ID).value = null;
    formGroup?.control(FieldConstant.BUILDING_NAME).value = null;
    formGroup?.control(FieldConstant.COMPANY_ID).value = null;
    formGroup?.control(FieldConstant.COMPANY_NAME).value = null;
    formGroup?.control(FieldConstant.MEETING_TYPE).value = null;
    formGroup?.control(FieldConstant.VISITOR_TYPE).value = null;
    formGroup?.control(FieldConstant.START_DATE).value = null;
    formGroup?.control(FieldConstant.END_DATE).value = null;
    formGroup?.control(FieldConstant.DATE).value = null;
    formGroup?.markAllAsTouched();
    context.read<VisitorHistoryFilterBloc>().add(
          ClearFilterEvent(),
        );
  }

  static void filterBuilder(
    VisitorFilter visitorFilter,
    HistoryFilterEvent? event,
  ) {
    visitorFilter.setPlaceIdFilter = event?.placeIdFilter;
    visitorFilter.setAccountIdFilter = event?.accountIdFilter;
    visitorFilter.setMeetingTypeFilter = event?.meetingTypeFilter;
    visitorFilter.setVisitorTypeFilter = event?.visitorTypeFilter;
    visitorFilter.setVisitingDateFilter = event?.visitingDateFilter;
  }

  static void clearBuilder(
    VisitorFilter visitorFilter,
    ClearHistoryFilterEvent event,
  ) {
    visitorFilter.setPlaceIdFilter = null;
    visitorFilter.setAccountIdFilter = null;
    visitorFilter.setMeetingTypeFilter = null;
    visitorFilter.setVisitorTypeFilter = null;
    visitorFilter.setVisitingDateFilter = null;
  }

  static String dateBuilder(
    DateTime? dateTime,
  ) {
    try {
      String visitingDate = '';
      if (dateTime != null) {
        visitingDate = DateTime.parse(dateTime.toString())
            .toLocal()
            .format('dd-MM-yyyy hh:mm a');
      }
      return visitingDate;
    } catch (err) {
      throw err;
    }
  }

  static List<DropdownMenuItem<dynamic>> meetingTypeDropDownMenuItems(
    BuildContext context,
  ) {
    final List<MeetingType> _meetingType = MeetingType.values;
    final List<DropdownMenuItem<dynamic>> dropDownItems = [];
    _meetingType.forEach((type) {
      dropDownItems.add(
        DropdownMenuItem(
          child: Text(
            type.toString().split('.').last.toLowerCase().capitalizeFirstofEach,
            style: bodyText1.copyWith(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          value: type,
        ),
      );
    });
    return dropDownItems;
  }

  static List<DropdownMenuItem<dynamic>> visitorTypeDropDownMenuItems(
    BuildContext context,
  ) {
    final List<VisitorType> _visitorType = VisitorType.values;
    final List<DropdownMenuItem<dynamic>> dropDownItems = [];
    _visitorType.forEach((type) {
      dropDownItems.add(
        DropdownMenuItem(
          child: Text(
            type.toString().split('.').last.toLowerCase().capitalizeFirstofEach,
            style: bodyText1.copyWith(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          value: type,
        ),
      );
    });
    return dropDownItems;
  }
}
