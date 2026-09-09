part of 'company_list_filter_bloc.dart';

class CompanyListFilterEvent {}

class FilterEvent extends CompanyListFilterEvent {
  final FormGroup? formGroup;
  final String? placeId;
  final String? placeName;

  FilterEvent({
    this.placeId,
    this.placeName,
    this.formGroup,
  });
}

class ClearFilterEvent extends CompanyListFilterEvent {}
