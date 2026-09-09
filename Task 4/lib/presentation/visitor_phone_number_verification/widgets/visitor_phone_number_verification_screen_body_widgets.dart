import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:skcl_vms/app/component/custom_button.dart';
import 'package:skcl_vms/app/component/phone_number_text_field_component.dart';
import 'package:skcl_vms/app/component/typography.dart';
import 'package:skcl_vms/app/constant/enum/meeting_type.dart';
import 'package:skcl_vms/app/constant/route_name.dart';
import 'package:skcl_vms/app/constant/size_config.dart';
import 'package:skcl_vms/app/log/util/log.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/model/visitor_entry.dart';
import 'package:skcl_vms/presentation/visitor_phone_number_verification/bloc/otp_generation/otp_generation_bloc.dart';
import 'package:skcl_vms/presentation/visitor_phone_number_verification/bloc/otp_timer/otp_timer_cubit.dart';

const String fileName =
    'visitor_verification.widgets.visitor_verification_screen_body_widgets.dart';

class VisitorPhoneNumberVerificationScreenBodyWidgets {
  static List<Widget> bodyHeader(BuildContext context) {
    return [
      Text(
        "Enter visitor phone number for verification",
        style: headline6.copyWith(
          color: Theme.of(context).colorScheme.secondary,
        ),
        textAlign: TextAlign.center,
      ),
      Padding(
        padding: const EdgeInsets.all(20),
        child: Text(
          "We will send a code (via SMS text message) to this phone number",
          style: bodyText1.copyWith(
            color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
          ),
          textAlign: TextAlign.center,
        ),
      ),
    ];
  }

  static Form mobileNumberForm(
    BuildContext context,
    GlobalKey<FormState> visitorPhoneNumberFormGlobalKey,
    TextEditingController visitorPhoneNumberController,
  ) {
    return Form(
      key: visitorPhoneNumberFormGlobalKey,
      child: Column(
        children: [
          PhoneNumberTextFieldComponent.phoneNumberTextFieldComponent(
            context,
            visitorPhoneNumberController,
            10,
            "Visitor phone number",
            (String value) {
              if (value.length == 10) {
                FocusScope.of(context).unfocus();
              }
            },
            true,
            null,
          ),
          if (visitorPhoneNumberFormGlobalKey.currentState != null &&
              visitorPhoneNumberFormGlobalKey.currentState!.validate()) ...[
            SizedBox(
              height: SizeConfig.heightMultiplier * 3,
            ),
            CustomFlatButton(
              onpress: () {
                context.read<OTPGenerationBloc>().add(
                      GenerateOTP(
                        phoneNumber: visitorPhoneNumberController.text,
                      ),
                    );
              },
              widget: Container(
                child: Center(
                  child: Text(
                    'Send OTP',
                    style: subtitle1.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                ),
              ),
              buttonHeight: SizeConfig.heightMultiplier * 8,
              buttonWidth: SizeConfig.widthMultiplier * 80,
            ),
          ],
          SizedBox(
            height: SizeConfig.heightMultiplier * 2,
          ),
        ],
      ),
    );
  }

  static void onOTPEntered(
    BuildContext context,
    String phoneNumber,
    String userEnterOTPCode,
    int? otpCode,
  ) async {
    try {
      if (userEnterOTPCode == '123456' ||
          (otpCode != null && otpCode == int.tryParse(userEnterOTPCode))) {
        EasyLoading.dismiss();
        Navigator.pushNamed(
          context,
          RouteName.VISITOR_ENTRY_FORM_SCREEN,
          arguments: VisitorEntry(
            meetingType: MeetingType.UNPLANNED,
            phoneNumber: phoneNumber,
            phoneNumberVerified: true,
          ),
        );
      } else {
        Log.error(
          context,
          fileName,
          '_onOTPEntered',
          'OTP verification failed',
          'Visitor Mobile Number Verification',
          null,
          false,
          null,
          null,
        );
        await EasyLoading.showError("Verification failed");
      }
    } catch (err) {
      Log.error(
        context,
        fileName,
        '_onOTPEntered',
        err,
        'Visitor Mobile Number Verification',
        null,
        false,
        null,
        null,
      );
      await EasyLoading.showError("Verification failed");
    }
  }

  static List<Widget> otpVerificationButton(
    BuildContext context,
    GlobalKey<FormState> visitorPhoneNumberFormGlobalKey,
    TextEditingController visitorPhoneNumberController,
    TextEditingController otpVerificationController,
  ) {
    if (visitorPhoneNumberFormGlobalKey.currentState != null &&
        visitorPhoneNumberFormGlobalKey.currentState!.validate()) {
      return [
        BlocBuilder<OTPGenerationBloc, OTPGenerationState>(
          builder: (context, otpGenerationState) {
            if (otpGenerationState is OTPGenerated) {
              return BlocBuilder<OTPTimerCubit, OTPTimerState>(
                builder: (context, timerState) {
                  return Column(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'OTP code sent to +91 ${visitorPhoneNumberController.text} (Mock OTP: 123456)',
                            style: subtitle1.copyWith(
                                color: Theme.of(context).colorScheme.secondary),
                            textAlign: TextAlign.center,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 19 * SizeConfig.widthMultiplier,
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              child: Center(
                                child: Row(
                                  children: [
                                    Text(
                                      "This code will expires in",
                                      style: subtitle1.copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary),
                                    ),
                                    SizedBox(
                                      width: 1 * SizeConfig.widthMultiplier,
                                    ),
                                    Text(
                                      "00:${timerState.secondsRemaining.toString().padLeft(2, '0')}",
                                      style: subtitle1.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: SizeConfig.heightMultiplier * 2,
                          ),
                        ],
                      ),
                      if (timerState.enableResend) ...[
                        Center(
                          child: Column(
                            children: [
                              Text(
                                "If you didn't get the OTP Please click",
                                textAlign: TextAlign.center,
                                style: subtitle2.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondary),
                              ),
                              TextButton(
                                onPressed: () {
                                  context.read<OTPGenerationBloc>().add(
                                        GenerateOTP(
                                          phoneNumber:
                                              visitorPhoneNumberController.text,
                                        ),
                                      );
                                },
                                child: Text(
                                  'Resend OTP',
                                  textAlign: TextAlign.center,
                                  style: subtitle1.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primary),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                    context,
                                    RouteName.VISITOR_ENTRY_FORM_SCREEN,
                                    arguments: VisitorEntry(
                                      meetingType: MeetingType.UNPLANNED,
                                      phoneNumber:
                                          visitorPhoneNumberController.text,
                                      phoneNumberVerified: false,
                                    ),
                                  );
                                },
                                child: Text(
                                  'Skip',
                                  textAlign: TextAlign.center,
                                  style: subtitle1.copyWith(
                                    color: Theme.of(context).colorScheme.error,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 3,
                      ),
                      PhoneNumberTextFieldComponent
                          .phoneNumberTextFieldComponent(
                        context,
                        otpVerificationController,
                        6,
                        "Please enter received OTP",
                        (String value) {
                          if (value.length == 6) {
                            FocusScope.of(context).unfocus();
                          }
                        },
                        false,
                        TextAlign.center,
                      ),
                      if (otpVerificationController.text.length == 6) ...[
                        SizedBox(
                          height: SizeConfig.heightMultiplier * 3,
                        ),
                        CustomFlatButton(
                          onpress: () {
                            VisitorPhoneNumberVerificationScreenBodyWidgets
                                .onOTPEntered(
                              context,
                              visitorPhoneNumberController.text,
                              otpVerificationController.text,
                              otpGenerationState.otpCode,
                            );
                          },
                          widget: Container(
                            child: Center(
                              child: Text(
                                'Verify',
                                style: subtitle1.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                ),
                              ),
                            ),
                          ),
                          buttonHeight: 8 * SizeConfig.heightMultiplier,
                          buttonWidth: 80 * SizeConfig.widthMultiplier,
                        ),
                      ],
                    ],
                  );
                },
              );
            } else {
              return Container();
            }
          },
        ),
      ];
    } else {
      return [];
    }
  }
}
