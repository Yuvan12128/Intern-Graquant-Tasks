part of 'account_form_bloc.dart';

class AccountFormState {
  final bool accountLoading;
  final List<SearchDelegateModel>? accountDelegates;
  final Object? error;

  AccountFormState({
    this.accountLoading = false,
    this.accountDelegates,
    this.error,
  });

  AccountFormState copyWith({
    bool? accountLoading,
    List<SearchDelegateModel>? accountDelegates,
    Object? error,
  }) {
    return AccountFormState(
      accountLoading: accountLoading ?? this.accountLoading,
      accountDelegates: accountDelegates ?? this.accountDelegates,
      error: error ?? null,
    );
  }
}
