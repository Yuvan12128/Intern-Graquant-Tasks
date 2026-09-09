part of 'sign_in_bloc.dart';

class SignInEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class OnOtpSignInEvent extends SignInEvent {
  final String? userIdToken;
  OnOtpSignInEvent({
    this.userIdToken,
  });
  @override
  List<Object?> get props => [userIdToken];
}

class SignInErrorEvent extends SignInEvent {}
