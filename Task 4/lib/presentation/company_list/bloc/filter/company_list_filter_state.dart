part of 'company_list_filter_bloc.dart';

class CompanyListFilterState {
  final FormGroup? formGroup;
  final String? placeIdFilter;
  final String? placeNameFilter;
  final Object? error;
  CompanyListFilterState({
    this.formGroup,
    this.placeIdFilter,
    this.placeNameFilter,
    this.error,
  });

  CompanyListFilterState copyWith({
    final FormGroup? formGroup,
    final String? placeIdFilter,
    final String? placeNameFilter,
    final Object? error,
  }) {
    return CompanyListFilterState(
      formGroup: formGroup ?? this.formGroup,
      placeIdFilter: placeIdFilter ?? this.placeIdFilter,
      placeNameFilter: placeNameFilter ?? this.placeNameFilter,
      error: error ?? null,
    );
  }
}
