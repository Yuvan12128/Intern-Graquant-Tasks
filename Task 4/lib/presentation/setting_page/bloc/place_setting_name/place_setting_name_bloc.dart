import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:skcl_vms/app/constant/field_constant.dart';
import 'package:skcl_vms/data/secure_storage/secure_storage.dart';

part 'place_setting_name_event.dart';
part 'place_setting_name_state.dart';

class PlaceSettingNameBloc
    extends Bloc<PlaceSettingNameEvent, PlaceSettingNameState> {
  PlaceSettingNameBloc() : super(PlaceSettingNameInitial()) {
    on<GetPlaceSettingNameEvent>(_onGetPlaceSettingNameEvent);
    on<AddPlaceSettingNameEvent>(_onAddPlaceSettingNameEvent);
  }

  Future<void> _onGetPlaceSettingNameEvent(
    GetPlaceSettingNameEvent event,
    Emitter<PlaceSettingNameState> emit,
  ) async {
    try {
      emit(GetPlaceSettingNameLoading());
      final String? storedPlaceSettingName =
          await SecureStorage().readSecureData(FieldConstant.BUILDING_NAME);
      final String? storedPlaceSettingId =
          await SecureStorage().readSecureData(FieldConstant.BUILDING_ID);
      emit(
        GetPlaceSettingNameLoaded(
          storedPlaceSettingName: (storedPlaceSettingName != null &&
                  storedPlaceSettingName.length > 0)
              ? storedPlaceSettingName
              : null,
          storedPlaceSettingId:
              (storedPlaceSettingId != null && storedPlaceSettingId.length > 0)
                  ? storedPlaceSettingId
                  : null,
        ),
      );
    } catch (err) {
      emit(
        PlaceSettingNameError(
          error: err,
        ),
      );
    }
  }

  Future<void> _onAddPlaceSettingNameEvent(
    AddPlaceSettingNameEvent event,
    Emitter<PlaceSettingNameState> emit,
  ) async {
    try {
      emit(PlaceSettingNameAdding());

      await SecureStorage().writeSecureData(
        FieldConstant.BUILDING_NAME,
        event.placeSettingName,
      );
      await SecureStorage().writeSecureData(
        FieldConstant.BUILDING_ID,
        event.placeSettingName.length > 0 ? event.placeSettingId : '',
      );
      emit(
        PlaceSettingNameAdded(
          placeName: event.placeSettingName,
          placeId: event.placeSettingId,
        ),
      );
    } catch (err) {
      emit(
        PlaceSettingNameError(
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
