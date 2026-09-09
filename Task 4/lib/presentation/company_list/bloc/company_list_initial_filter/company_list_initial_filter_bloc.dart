import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:skcl_vms/presentation/company_list/bloc/filter/company_list_filter_bloc.dart';

part 'company_list_initial_filter_event.dart';
part 'company_list_initial_filter_state.dart';

class CompanyListInitialFilterBloc
    extends Bloc<CompanyListInitialFilterEvent, CompanyListInitialFilterState> {
  final CompanyListFilterBloc companyListFilterBloc;
  CompanyListInitialFilterBloc({
    required this.companyListFilterBloc,
  }) : super(CompanyListInitialFilterState()) {
    on<CompanyListInitialFilterResetEvent>(
        _onCompanyListHistoryFilterResetEvent);
  }

  void _onCompanyListHistoryFilterResetEvent(
    CompanyListInitialFilterResetEvent event,
    Emitter<CompanyListInitialFilterState> emit,
  ) async {
    try {
      emit(CompanyListInitialFilterResetLoadingState());
      // final String? storedPlaceSettingName =
      //     await SecureStorage().readSecureData(FieldConstant.BUILDING_NAME);
      // final String? storedPlaceSettingId =
      //     await SecureStorage().readSecureData(FieldConstant.BUILDING_ID);

      // if (event.doPlannedFilterRequired ||
      //     (storedPlaceSettingName != null &&
      //             storedPlaceSettingName.length > 0) &&
      //         (storedPlaceSettingId != null &&
      //             storedPlaceSettingId.length > 0)) {
      //   companyListFilterBloc.add(FilterEvent(
      //     placeId: storedPlaceSettingId,
      //     placeName: storedPlaceSettingName,
      //   ));
      // } else {
      //   companyListFilterBloc.add(ClearFilterEvent());
      // }
      emit(CompanyListInitialFilterResetState());
    } catch (err) {
      emit(
        CompanyListInitialFilterResetErrorState(
          error: err,
        ),
      );
    }
  }
}
