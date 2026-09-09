part of 'place_form_bloc.dart';

@immutable
abstract class PlaceFormEvent {}

class GetPlaceFormEvent extends PlaceFormEvent {
  final String? accountId;
  final String? roleType;
  GetPlaceFormEvent({
    this.accountId,
    this.roleType,
  });
}
