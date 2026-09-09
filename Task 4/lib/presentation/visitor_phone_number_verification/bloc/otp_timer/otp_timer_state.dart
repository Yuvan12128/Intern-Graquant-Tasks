part of 'otp_timer_cubit.dart';

class OTPTimerState {
  int secondsRemaining;
  final bool enableResend;
  final Object? error;
  OTPTimerState({
    this.secondsRemaining = 60,
    this.enableResend = false,
    this.error,
  });

  OTPTimerState copyWith({
    int? secondsRemaining,
    bool? enableResend,
    Object? error,
  }) {
    return OTPTimerState(
      secondsRemaining: secondsRemaining ?? this.secondsRemaining,
      enableResend: enableResend ?? this.enableResend,
      error: error ?? null,
    );
  }
}
