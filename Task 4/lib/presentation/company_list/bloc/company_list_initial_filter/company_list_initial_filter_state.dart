part of 'company_list_initial_filter_bloc.dart';

class CompanyListInitialFilterState {}

class CompanyListInitialFilterResetState
    extends CompanyListInitialFilterState {}

class CompanyListInitialFilterResetLoadingState
    extends CompanyListInitialFilterState {}

class CompanyListInitialFilterResetErrorState
    extends CompanyListInitialFilterState {
  final Object? error;
  CompanyListInitialFilterResetErrorState({
    required this.error,
  });
}
