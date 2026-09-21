import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:skcl_vms/app/constant/field_constant.dart';
import 'package:skcl_vms/data/secure_storage/secure_storage.dart';

part 'visitor_form_event.dart';
part 'visitor_form_state.dart';

class VisitorFormBloc extends Bloc<VisitorFormEvent, VisitorFormState> {
  VisitorFormBloc() : super(VisitorFormState()) {
    on<VisitorFormEntryShowBlockTextFieldEvent>(
        _onVisitorFormEntryShowBlockField);
    on<VisitorFormEntryShowFloorTextFieldEvent>(
        _onVisitorFormEntryShowFloorField);
    on<VisitorFormEntryShowBuildingTextFieldEvent>(
        _onVisitorFormEntryShowBuildingField);
  }

  Future<void> _onVisitorFormEntryShowBlockField(
    VisitorFormEntryShowBlockTextFieldEvent event,
    Emitter<VisitorFormState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          showBlockTextField: event.showBlockTextField,
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

  Future<void> _onVisitorFormEntryShowFloorField(
    VisitorFormEntryShowFloorTextFieldEvent event,
    Emitter<VisitorFormState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          showFloorTextField: event.showFloorTextField,
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

  Future<void> _onVisitorFormEntryShowBuildingField(
    VisitorFormEntryShowBuildingTextFieldEvent event,
    Emitter<VisitorFormState> emit,
  ) async {
    try {
      final String? storedPlaceName =
          await SecureStorage().readSecureData(FieldConstant.BUILDING_NAME);
      final String? storedPlaceId =
          await SecureStorage().readSecureData(FieldConstant.BUILDING_ID);
      final String? placeName =
          (storedPlaceName != null && storedPlaceName.length > 0)
              ? storedPlaceName
              : null;
      emit(
        state.copyWith(
          showBuildingTextField: placeName != null ? false : true,
          buildingName: storedPlaceName,
          buildingId: storedPlaceId,
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

  @override
  Future<void> close() {
    return super.close();
  }
}
