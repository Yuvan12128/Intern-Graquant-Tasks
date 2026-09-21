part of 'user_authorization_bloc.dart';

@immutable
abstract class UserAuthorizationEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class OnUserLogin extends UserAuthorizationEvent {
  final String roleType;
  final String accountId;
  OnUserLogin({
    required this.roleType,
    required this.accountId,
  });
}
