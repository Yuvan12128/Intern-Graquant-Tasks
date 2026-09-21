part of 'company_list_initial_filter_bloc.dart';

@immutable
abstract class CompanyListInitialFilterEvent extends Equatable {
  const CompanyListInitialFilterEvent();

  @override
  List<Object?> get props => [];
}

class CompanyListInitialFilterResetEvent extends CompanyListInitialFilterEvent {
  CompanyListInitialFilterResetEvent();
}
