part of 'app_auth_bloc.dart';

@immutable
abstract class AppAuthEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class OnAppOpen extends AppAuthEvent {}

class OnAppUserLoggedOut extends AppAuthEvent {}
