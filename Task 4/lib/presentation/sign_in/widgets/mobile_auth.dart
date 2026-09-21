import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skcl_vms/app/component/typography.dart';
import 'package:skcl_vms/presentation/sign_in/cubit/phone_number_login/phone_number_login_cubit.dart';
import 'package:skcl_vms/presentation/sign_in/utility/phone_number_utility.dart';
import 'package:skcl_vms/presentation/sign_in/widgets/mobile_auth_component.dart';

const String fileName = 'sign_in.widgets.mobile_auth.dart';

class MobileAuth extends StatefulWidget {
  @override
  State<MobileAuth> createState() => _MobileAuthState();
}

class _MobileAuthState extends State<MobileAuth> {
  final TextEditingController phoneNumberController = TextEditingController();
  final GlobalKey<FormState> phoneNumberFormGlobalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<PhoneNumberLoginCubit, PhoneNumberLoginState>(
      listener: (context, state) {
        PhoneNumberUtility.phoneNumberErrorState(
          context,
          state,
          fileName,
        );
      },
      child: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Enter your phone number for verification",
                style: headline6.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  "We will send a code (via SMS text message) to your phone number",
                  style: bodyText1.copyWith(
                    color: Theme.of(context)
                        .colorScheme
                        .secondary
                        .withValues(alpha: 0.5),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              BlocBuilder<PhoneNumberLoginCubit, PhoneNumberLoginState>(
                builder: (context, state) {
                  return MobileAuthComponent.phoneNumberTextFormField(
                    context,
                    state,
                    phoneNumberController,
                    phoneNumberFormGlobalKey,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
