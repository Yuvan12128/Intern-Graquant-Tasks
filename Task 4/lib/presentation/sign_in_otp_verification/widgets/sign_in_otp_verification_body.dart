import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:skcl_vms/app/log/util/log.dart';
import 'package:skcl_vms/app/constant/size_config.dart';
import 'package:skcl_vms/presentation/sign_in/bloc/sign_in_bloc.dart';
import 'package:skcl_vms/presentation/sign_in_otp_verification/utility/otp_utility.dart';
import 'package:skcl_vms/presentation/sign_in_otp_verification/widgets/otp_form.dart';
import 'package:skcl_vms/presentation/sign_in_otp_verification/widgets/otp_header.dart';

const String fileName = 'otp_verification_body.dart';

class SignInOTPVerificationBody extends StatefulWidget {
  SignInOTPVerificationBody({
    required this.phoneNumber,
  });

  final String phoneNumber;

  @override
  _SignInOTPVerificationBodyState createState() =>
      _SignInOTPVerificationBodyState();
}

class _SignInOTPVerificationBodyState extends State<SignInOTPVerificationBody> {
  int? _resendToken;
  String _verificationId = '';
  int secondsRemaining = 60;
  bool enableResend = false;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    _verifyPhoneNumber();
    timer = Timer.periodic(Duration(seconds: 1), (_) {
      if (secondsRemaining != 0) {
        setState(() {
          secondsRemaining--;
        });
      } else {
        setState(() {
          enableResend = true;
        });
      }
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  void _verifyPhoneNumber() {
    setState(() {
      _verificationId = 'mock_verification_id';
    });
  }

  void _resendOTP() {
    setState(() {
      secondsRemaining = 60;
      enableResend = false;
    });
    _verifyPhoneNumber();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignInBloc, SignInState>(
      listener: (context, state) {
        EasyLoading.dismiss();
        try {
          OTPUtility.authComplete(state, context);
          OTPUtility.errorStateHandler(state, context, fileName);
        } catch (err) {
          Log.error(
            context,
            fileName,
            '_verifyOtp',
            err,
            'otp_verification',
            null,
            false,
            null,
            null,
          );
          EasyLoading.showError('Login Failed');
        } finally {
          EasyLoading.dismiss();
        }
      },
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 2 * SizeConfig.heightMultiplier,
            horizontal: 7 * SizeConfig.widthMultiplier,
          ),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: <Widget>[
                  OTPHeader(
                    phoneNumber: widget.phoneNumber,
                    secondsRemaining: secondsRemaining,
                  ),
                  OTPForm(
                    enableResend: enableResend,
                    resendCode: _resendOTP,
                    verificationId: _verificationId,
                    fileName: fileName,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
