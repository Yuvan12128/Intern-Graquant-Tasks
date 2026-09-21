part of 'company_list_bloc.dart';

@immutable
abstract class CompanyListEvent extends Equatable {
  const CompanyListEvent();

  @override
  List<Object?> get props => [];
}

class CompanyListFetchedEvent extends CompanyListEvent {
  CompanyListFetchedEvent();
}

class CompanyListRefreshEvent extends CompanyListEvent {}

class CompanyFilterEvent extends CompanyListEvent {
  final String? placeIdFilter;
  CompanyFilterEvent({
    this.placeIdFilter,
  });
}

class ClearCompanyFilterEvent extends CompanyListEvent {}

class CompanyListErrorEvent extends CompanyListEvent {
  final Object? err;
  CompanyListErrorEvent({this.err});
}
