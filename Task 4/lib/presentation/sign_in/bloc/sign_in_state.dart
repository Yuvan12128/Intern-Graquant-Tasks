part of 'sign_in_bloc.dart';

class SignInState {
  final bool isAuthCompleted;
  final String? eMail;
  final String? phoneNo;
  final String? personId;
  final String? givenName;
  final String? surname;
  final Enum$LifeState? lifeState;
  final Object? error;
  SignInState({
    this.isAuthCompleted = false,
    this.eMail,
    this.phoneNo,
    this.personId,
    this.givenName,
    this.surname,
    this.lifeState,
    this.error,
  });

  // @override
  // List<Object?> get props =>
  //     [getUserInfo, isAuthCompleted, eMail, phoneNo, givenName, surname, error];
}
