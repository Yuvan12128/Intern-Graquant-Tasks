part of 'user_authorization_bloc.dart';

class UserAuthorizationState {
  final String? roleType;
  final String? accountId;
  UserAuthorizationState({
    this.roleType,
    this.accountId,
  });
}

class UserAuthorizationStateError extends UserAuthorizationState {
  final Object? error;
  UserAuthorizationStateError({
    this.error,
  });
}
