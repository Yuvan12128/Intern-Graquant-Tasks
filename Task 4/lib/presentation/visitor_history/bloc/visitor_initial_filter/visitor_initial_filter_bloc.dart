import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:skcl_vms/app/constant/enum/meeting_type.dart';
import 'package:skcl_vms/app/constant/field_constant.dart';
import 'package:skcl_vms/data/secure_storage/secure_storage.dart';
import 'package:skcl_vms/presentation/visitor_history/bloc/filter/visitor_history_filter_bloc.dart';

part 'visitor_initial_filter_event.dart';
part 'visitor_initial_filter_state.dart';

class VisitorInitialFilterBloc
    extends Bloc<VisitorInitialFilterEvent, VisitorInitialFilterState> {
  final VisitorHistoryFilterBloc visitorHistoryFilterBloc;
  VisitorInitialFilterBloc({
    required this.visitorHistoryFilterBloc,
  }) : super(VisitorInitialFilterState()) {
    on<VisitorInitialFilterResetEvent>(_onVisitorHistoryFilterResetEvent);
  }

  void _onVisitorHistoryFilterResetEvent(
    VisitorInitialFilterResetEvent event,
    Emitter<VisitorInitialFilterState> emit,
  ) async {
    try {
      emit(VisitorInitialFilterResetLoadingState());
      final String? storedPlaceSettingName =
          await SecureStorage().readSecureData(FieldConstant.BUILDING_NAME);
      final String? storedPlaceSettingId =
          await SecureStorage().readSecureData(FieldConstant.BUILDING_ID);

      if (event.doPlannedFilterRequired ||
          (storedPlaceSettingName != null &&
                  storedPlaceSettingName.length > 0) &&
              (storedPlaceSettingId != null &&
                  storedPlaceSettingId.length > 0)) {
        visitorHistoryFilterBloc.add(FilterEvent(
          placeId: storedPlaceSettingId,
          placeName: storedPlaceSettingName,
          meetingType:
              event.doPlannedFilterRequired ? MeetingType.PLANNED : null,
        ));
      } else {
        visitorHistoryFilterBloc.add(ClearFilterEvent());
      }
      emit(VisitorInitialFilterResetState());
    } catch (err) {
      emit(
        VisitorInitialFilterResetErrorState(
          error: err,
        ),
      );
    }
  }
}
