import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skcl_vms/app/component/custom_dialog.dart';
import 'package:skcl_vms/app/utility/network_bloc_listener.dart';
import 'package:skcl_vms/presentation/sign_in_otp_verification/model/sign_in_otp_verification.dart';
import 'package:skcl_vms/presentation/sign_in_otp_verification/widgets/sign_in_otp_verification_body.dart';

class SignInOTPVerificationScreen extends StatelessWidget {
  final SignInOTPVerification arguments;
  const SignInOTPVerificationScreen({Key? key, required this.arguments})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: () => CustomDialog.showExitPopup(context),
        child: MultiBlocListener(
          listeners: [
            networkListener(),
          ],
          child: SignInOTPVerificationBody(
            phoneNumber: arguments.phoneNumber,
          ),
        ),
      ),
    );
  }
}
