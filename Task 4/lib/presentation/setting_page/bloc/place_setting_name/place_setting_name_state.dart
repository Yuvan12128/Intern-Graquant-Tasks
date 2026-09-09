part of 'place_setting_name_bloc.dart';

@immutable
abstract class PlaceSettingNameState {}

class PlaceSettingNameInitial extends PlaceSettingNameState {}

class GetPlaceSettingNameLoading extends PlaceSettingNameState {}

class GetPlaceSettingNameLoaded extends PlaceSettingNameState {
  final String? storedPlaceSettingName;
  final String? storedPlaceSettingId;
  GetPlaceSettingNameLoaded({
    required this.storedPlaceSettingName,
    required this.storedPlaceSettingId,
  });
}

class PlaceSettingNameAdding extends PlaceSettingNameState {}

class PlaceSettingNameAdded extends PlaceSettingNameState {
  final String? placeName;
  final String? placeId;
  PlaceSettingNameAdded({
    this.placeName,
    this.placeId,
  });
}

class PlaceSettingNameError extends PlaceSettingNameState {
  final Object? error;
  PlaceSettingNameError({
    this.error,
  });
}
