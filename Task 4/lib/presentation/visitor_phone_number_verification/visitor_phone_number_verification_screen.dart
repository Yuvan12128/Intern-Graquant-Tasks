import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skcl_vms/app/component/custom_appbar.dart';
import 'package:skcl_vms/app/utility/network_bloc_listener.dart';
import 'package:skcl_vms/presentation/router.dart';
import 'package:skcl_vms/presentation/visitor_phone_number_verification/bloc/otp_generation/otp_generation_bloc.dart';
import 'package:skcl_vms/presentation/visitor_phone_number_verification/widgets/visitor_phone_number_verification_screen_body.dart';

class VisitorPhoneNumberVerificationScreen extends StatelessWidget {
  const VisitorPhoneNumberVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        networkListener(),
      ],
      child: Scaffold(
        appBar: CustomAppBar.appBar(
          context,
          "Visitor Verification",
          true,
          null,
          null,
          true,
        ),
        body: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => OTPGenerationBloc(
                otpTimerCubit: AppRouter.otpTimerCubit,
              ),
            ),
            BlocProvider.value(
              value: AppRouter.otpTimerCubit,
            ),
          ],
          child: VisitorPhoneNumberVerificationScreenBody(),
        ),
      ),
    );
  }
}
