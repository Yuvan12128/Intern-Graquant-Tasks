part of 'account_name_bloc.dart';

class AccountNameState {}

class AccountNameInitial extends AccountNameState {}

class AccountNameLoading extends AccountNameState {}

class AccountNameLoaded extends AccountNameState {
  final List<SearchDelegateModel>? accounts;
  final Map<String, Map<String, Map<int, AccountFloorDetail>>>? accountNameMap;
  AccountNameLoaded({
    this.accounts,
    required this.accountNameMap,
  });
}

class AccountNameError extends AccountNameState {
  final Object error;
  AccountNameError(
    this.error,
  );
}
