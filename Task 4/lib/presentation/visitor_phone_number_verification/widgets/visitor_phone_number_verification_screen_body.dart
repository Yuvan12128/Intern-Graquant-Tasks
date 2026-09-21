import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skcl_vms/app/component/typography.dart';
import 'package:skcl_vms/app/constant/enum/meeting_type.dart';
import 'package:skcl_vms/app/constant/route_name.dart';
import 'package:skcl_vms/app/constant/size_config.dart';
import 'package:skcl_vms/app/log/util/log.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/model/visitor_entry.dart';
import 'package:skcl_vms/presentation/visitor_phone_number_verification/bloc/otp_generation/otp_generation_bloc.dart';
import 'package:skcl_vms/presentation/visitor_phone_number_verification/bloc/otp_timer/otp_timer_cubit.dart';
import 'package:skcl_vms/presentation/visitor_phone_number_verification/widgets/visitor_phone_number_verification_screen_body_widgets.dart';

const String fileName =
    'visitor_verification.widgets.visitor_verification_screen_body.dart';

class VisitorPhoneNumberVerificationScreenBody extends StatefulWidget {
  VisitorPhoneNumberVerificationScreenBody({Key? key}) : super(key: key);

  @override
  _VisitorPhoneNumberVerificationScreenBodyState createState() =>
      _VisitorPhoneNumberVerificationScreenBodyState();
}

class _VisitorPhoneNumberVerificationScreenBodyState
    extends State<VisitorPhoneNumberVerificationScreenBody> {
  final TextEditingController visitorPhoneNumberController =
      TextEditingController();
  final GlobalKey<FormState> visitorPhoneNumberFormGlobalKey =
      GlobalKey<FormState>();
  final TextEditingController otpVerificationController =
      TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 2 * SizeConfig.heightMultiplier,
            horizontal: 2 * SizeConfig.widthMultiplier,
          ),
          child: MultiBlocListener(
            listeners: [
              BlocListener<OTPTimerCubit, OTPTimerState>(
                listener: (context, state) {
                  if (state.error != null) {
                    Log.error(
                      context,
                      fileName,
                      'OTPTimerBloc',
                      state.error,
                      'OTP timer bloc error',
                      'Something went wrong!...',
                      false,
                      null,
                      TextButton(
                        style: ButtonStyle(
                          overlayColor: WidgetStateProperty.all(
                              Theme.of(context).primaryColor),
                        ),
                        child: Text(
                          "Try again",
                          style: subtitle2.copyWith(
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                          context.read<OTPGenerationBloc>().add(
                                GenerateOTP(
                                  phoneNumber:
                                      visitorPhoneNumberController.text,
                                ),
                              );
                        },
                      ),
                    );
                  }
                },
              ),
              BlocListener<OTPGenerationBloc, OTPGenerationState>(
                listener: (context, state) {
                  if (state is OTPGenerationError) {
                    Log.error(
                      context,
                      fileName,
                      'OTP generation bloc',
                      state.error,
                      'OTP generation bloc error',
                      'Something went wrong!...',
                      false,
                      TextButton(
                        style: ButtonStyle(
                          overlayColor: WidgetStateProperty.all(
                              Theme.of(context).primaryColor),
                        ),
                        child: Text(
                          "Skip",
                          style: subtitle2.copyWith(
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                          Navigator.pushNamed(
                            context,
                            RouteName.VISITOR_ENTRY_FORM_SCREEN,
                            arguments: VisitorEntry(
                              meetingType: MeetingType.UNPLANNED,
                              phoneNumber: visitorPhoneNumberController.text,
                              phoneNumberVerified: false,
                            ),
                          );
                        },
                      ),
                      TextButton(
                        style: ButtonStyle(
                          overlayColor: WidgetStateProperty.all(
                              Theme.of(context).primaryColor),
                        ),
                        child: Text(
                          "Try again",
                          style: subtitle2.copyWith(
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                          context.read<OTPGenerationBloc>().add(
                                GenerateOTP(
                                  phoneNumber:
                                      visitorPhoneNumberController.text,
                                ),
                              );
                        },
                      ),
                    );
                  }
                },
              ),
            ],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...VisitorPhoneNumberVerificationScreenBodyWidgets.bodyHeader(
                    context),
                VisitorPhoneNumberVerificationScreenBodyWidgets
                    .mobileNumberForm(
                  context,
                  visitorPhoneNumberFormGlobalKey,
                  visitorPhoneNumberController,
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 2,
                ),
                ...VisitorPhoneNumberVerificationScreenBodyWidgets
                    .otpVerificationButton(
                  context,
                  visitorPhoneNumberFormGlobalKey,
                  visitorPhoneNumberController,
                  otpVerificationController,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
