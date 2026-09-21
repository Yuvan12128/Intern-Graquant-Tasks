part of 'phone_number_login_cubit.dart';

class PhoneNumberLoginState {
  final String? onChangedPhoneNumber;
  PhoneNumberLoginState({
    this.onChangedPhoneNumber,
  });
}

class PhoneNumberLoginErrorState extends PhoneNumberLoginState {
  final Object? error;
  PhoneNumberLoginErrorState({
    this.error,
  });
}
