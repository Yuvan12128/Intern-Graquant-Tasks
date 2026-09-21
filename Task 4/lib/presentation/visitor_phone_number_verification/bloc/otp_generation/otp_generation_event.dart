part of 'otp_generation_bloc.dart';

class OTPGenerationEvent {}

class GenerateOTP extends OTPGenerationEvent {
  final String? phoneNumber;
  GenerateOTP({
    this.phoneNumber,
  });
}
