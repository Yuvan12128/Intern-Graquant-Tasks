import 'package:bloc/bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skcl_vms/app/constant/field_constant.dart';
import 'package:skcl_vms/presentation/company_list/bloc/company_list/company_list_bloc.dart';

part 'company_list_filter_event.dart';
part 'company_list_filter_state.dart';

class CompanyListFilterBloc
    extends Bloc<CompanyListFilterEvent, CompanyListFilterState> {
  final CompanyListBloc companyListBloc;
  CompanyListFilterBloc({required this.companyListBloc})
      : super(CompanyListFilterState()) {
    on<FilterEvent>(_filterEvent);
    on<ClearFilterEvent>(_clearFilterEvent);
  }

  _filterEvent(
    FilterEvent event,
    Emitter<CompanyListFilterState> emit,
  ) async {
    try {
      String? placeIdFilter;
      if (event.placeId != null) {
        placeIdFilter = event.placeId;
      }
      if (event.formGroup?.control(FieldConstant.BUILDING_ID).value != null) {
        placeIdFilter =
            event.formGroup?.control(FieldConstant.BUILDING_ID).value;
      }
      companyListBloc.add(CompanyFilterEvent(
        placeIdFilter: placeIdFilter,
      ));
      emit(
        state.copyWith(
          formGroup: event.formGroup,
          placeIdFilter: placeIdFilter,
          placeNameFilter: event.placeName ??
              event.formGroup?.control(FieldConstant.BUILDING_NAME).value,
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
    Emitter<CompanyListFilterState> emit,
  ) {
    try {
      companyListBloc.add(
        ClearCompanyFilterEvent(),
      );
      emit(CompanyListFilterState());
    } catch (err) {
      emit(
        state.copyWith(
          error: err,
        ),
      );
    }
  }
}
