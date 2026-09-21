part of 'place_setting_name_bloc.dart';

@immutable
abstract class PlaceSettingNameEvent {}

class GetPlaceSettingNameEvent extends PlaceSettingNameEvent {
  GetPlaceSettingNameEvent();
}

class AddPlaceSettingNameEvent extends PlaceSettingNameEvent {
  final String placeSettingName;
  final String placeSettingId;
  AddPlaceSettingNameEvent({
    required this.placeSettingName,
    required this.placeSettingId,
  });
}
