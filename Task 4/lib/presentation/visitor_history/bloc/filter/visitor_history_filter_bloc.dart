import 'package:bloc/bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skcl_vms/app/constant/enum/meeting_type.dart';
import 'package:skcl_vms/app/constant/enum/visitor_type.dart';
import 'package:skcl_vms/app/constant/field_constant.dart';
import 'package:skcl_vms/data/model/common/date_range_filter.dart';
import 'package:skcl_vms/presentation/visitor_history/bloc/visitor_history/visitor_history_bloc.dart';

part 'visitor_history_filter_event.dart';
part 'visitor_history_filter_state.dart';

class VisitorHistoryFilterBloc
    extends Bloc<VisitorHistoryFilterEvent, VisitorHistoryFilterState> {
  final VisitorHistoryBloc visitorHistoryBloc;
  VisitorHistoryFilterBloc({required this.visitorHistoryBloc})
      : super(VisitorHistoryFilterState()) {
    on<FilterEvent>(_filterEvent);
    on<ClearFilterEvent>(_clearFilterEvent);
  }

  _filterEvent(
    FilterEvent event,
    Emitter<VisitorHistoryFilterState> emit,
  ) async {
    try {
      DateRangeFilter visitingDateFilter = new DateRangeFilter();
      visitingDateFilter.setStartDate =
          event.formGroup?.control(FieldConstant.START_DATE).value;
      visitingDateFilter
        ..setEndDate = event.formGroup?.control(FieldConstant.END_DATE).value;
      MeetingType? meetingTypeFilter;
      String? placeIdFilter;
      if (event.meetingType != null) {
        meetingTypeFilter = event.meetingType;
      }
      if (event.formGroup?.control(FieldConstant.MEETING_TYPE).value != null) {
        meetingTypeFilter =
            event.formGroup?.control(FieldConstant.MEETING_TYPE).value;
      }
      if (event.placeId != null) {
        placeIdFilter = event.placeId;
      }
      if (event.formGroup?.control(FieldConstant.BUILDING_ID).value != null) {
        placeIdFilter =
            event.formGroup?.control(FieldConstant.BUILDING_ID).value;
      }
      visitorHistoryBloc.add(HistoryFilterEvent(
        visitingDateFilter: visitingDateFilter,
        meetingTypeFilter: meetingTypeFilter,
        visitorTypeFilter:
            event.formGroup?.control(FieldConstant.VISITOR_TYPE).value,
        placeIdFilter: placeIdFilter,
        accountIdFilter:
            event.formGroup?.control(FieldConstant.COMPANY_ID).value,
      ));
      emit(
        state.copyWith(
          formGroup: event.formGroup,
          startDate: event.formGroup?.control(FieldConstant.START_DATE).value,
          endDate: event.formGroup?.control(FieldConstant.END_DATE).value,
          meetingTypeFilter: meetingTypeFilter,
          visitorTypeFilter:
              event.formGroup?.control(FieldConstant.VISITOR_TYPE).value,
          placeIdFilter: placeIdFilter,
          placeNameFilter: event.placeName ??
              event.formGroup?.control(FieldConstant.BUILDING_NAME).value,
          accountIdFilter:
              event.formGroup?.control(FieldConstant.COMPANY_ID).value,
          accountNameFilter:
              event.formGroup?.control(FieldConstant.COMPANY_NAME).value,
          error: null,
        ),
      );
    } catch (err) {
      emit(
        state.copyWith(
          error: err,
        ),
      );
    }
  }

  _clearFilterEvent(
    ClearFilterEvent event,
    Emitter<VisitorHistoryFilterState> emit,
  ) {
    try {
      visitorHistoryBloc.add(
        ClearHistoryFilterEvent(),
      );
      emit(VisitorHistoryFilterState());
    } catch (err) {
      emit(
        state.copyWith(
          error: err,
        ),
      );
    }
  }
}
