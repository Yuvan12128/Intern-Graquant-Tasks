import 'package:bloc/bloc.dart';
import 'package:skcl_vms/presentation/visitor_phone_number_verification/bloc/otp_timer/otp_timer_cubit.dart';
import 'package:skcl_vms/presentation/visitor_phone_number_verification/utility/visitor_phone_number_verification_utility.dart';

part 'otp_generation_event.dart';
part 'otp_generation_state.dart';

class OTPGenerationBloc extends Bloc<OTPGenerationEvent, OTPGenerationState> {
  final OTPTimerCubit otpTimerCubit;
  OTPGenerationBloc({
    required this.otpTimerCubit,
  }) : super(OTPGenerationState()) {
    on<GenerateOTP>(_generateOTP);
  }

  _generateOTP(
    GenerateOTP event,
    Emitter<OTPGenerationState> emit,
  ) async {
    try {
      final String? phoneNumber = event.phoneNumber;
      if (phoneNumber != null) {
        otpTimerCubit.startTimerEvent();
        emit(OTPGenerating());
        final int =
            await VisitorPhoneNumberVerification.sendOTPMessage(phoneNumber);
        emit(OTPGenerated(otpCode: int));
      } else {
        throw new Exception('Phone number is null when generating OTP');
      }
    } catch (err) {
      otpTimerCubit.clearOTPTimerEvent();
      emit(
        OTPGenerationError(
          error: err,
        ),
      );
    }
  }
}
