part of 'otp_generation_bloc.dart';

class OTPGenerationState {}

class OTPGenerating extends OTPGenerationState {}

class OTPGenerated extends OTPGenerationState {
  final int? otpCode;
  OTPGenerated({this.otpCode});
}

class OTPGenerationError extends OTPGenerationState {
  final Object? error;
  OTPGenerationError({this.error});
}
