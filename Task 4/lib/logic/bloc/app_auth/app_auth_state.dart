part of 'app_auth_bloc.dart';

class AppAuthState {
  final AuthStatus? status;
  AppAuthState({
    this.status,
  });
}

class AppAuthStateError extends AppAuthState {
  final Object? error;
  final AuthStatus? status;
  AppAuthStateError({
    this.error,
    this.status,
  }) : super(
          status: status,
        );
}
