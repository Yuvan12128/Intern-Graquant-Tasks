import 'package:bloc/bloc.dart';

part 'phone_number_login_state.dart';

class PhoneNumberLoginCubit extends Cubit<PhoneNumberLoginState> {
  PhoneNumberLoginCubit() : super(PhoneNumberLoginState());

  void onChangedPhoneNumber(
    String? onChangedPhoneNumber,
  ) {
    try {
      if (onChangedPhoneNumber != null) {
        emit(PhoneNumberLoginState(
          onChangedPhoneNumber: onChangedPhoneNumber,
        ));
      }
    } catch (err) {
      emit(PhoneNumberLoginErrorState(
        error: err,
      ));
    }
  }
}
