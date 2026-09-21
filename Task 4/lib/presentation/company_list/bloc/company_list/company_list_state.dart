part of 'company_list_bloc.dart';

class CompanyListState extends Equatable {
  final List<Query$Accounts$accounts$values?> accountList;
  final AccountFilter accountFilter;
  final bool isInfiniteFetchLoading;
  final bool bottomLoading;
  final Object? error;

  CompanyListState({
    this.accountList = const <Query$Accounts$accounts$values?>[],
    required this.accountFilter,
    this.isInfiniteFetchLoading = false,
    this.bottomLoading = false,
    this.error,
  });

  CompanyListState copyWith({
    final List<Query$Accounts$accounts$values?>? accountList,
    final AccountFilter? accountFilter,
    final bool? isInfiniteFetchLoading,
    final bool? bottomLoading,
    final Object? error,
  }) {
    return CompanyListState(
      accountList: accountList ?? this.accountList,
      accountFilter: accountFilter ?? this.accountFilter,
      isInfiniteFetchLoading:
          isInfiniteFetchLoading ?? this.isInfiniteFetchLoading,
      bottomLoading: bottomLoading ?? this.bottomLoading,
      error: error ?? this.error,
    );
  }

  @override
  List<Object?> get props => [
        accountList,
        accountFilter,
        isInfiniteFetchLoading,
        bottomLoading,
        error,
      ];
}
