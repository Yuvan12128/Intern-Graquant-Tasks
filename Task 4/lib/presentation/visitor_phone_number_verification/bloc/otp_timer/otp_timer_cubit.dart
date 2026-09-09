import 'dart:async';

import 'package:bloc/bloc.dart';
part 'otp_timer_state.dart';

class OTPTimerCubit extends Cubit<OTPTimerState> {
  Timer? timer;
  OTPTimerCubit() : super(OTPTimerState());

  void startTimerEvent() async {
    try {
      emit(
        state.copyWith(
          enableResend: false,
        ),
      );
      timer?.cancel();
      state.secondsRemaining = 60;
      timer = Timer.periodic(Duration(seconds: 1), (_) {
        if (state.secondsRemaining != 0) {
          emit(
            OTPTimerState(
              secondsRemaining: state.secondsRemaining - 1,
              enableResend: false,
            ),
          );
        } else {
          timer?.cancel();
          emit(
            OTPTimerState(
              secondsRemaining: 0,
              enableResend: true,
            ),
          );
        }
      });
    } catch (err) {
      emit(
        OTPTimerState(
          error: err,
          enableResend: false,
        ),
      );
    }
  }

  void clearOTPTimerEvent() {
    try {
      timer?.cancel();
      emit(
        OTPTimerState(
          secondsRemaining: 60,
          enableResend: false,
        ),
      );
    } catch (err) {
      emit(
        state.copyWith(
          error: err,
        ),
      );
    }
  }
}
