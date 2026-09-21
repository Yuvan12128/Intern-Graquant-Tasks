import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skcl_vms/app/component/custom_dialog.dart';
import 'package:skcl_vms/presentation/router.dart';
import 'package:skcl_vms/presentation/sign_in/cubit/phone_number_login/phone_number_login_cubit.dart';
import 'package:skcl_vms/presentation/sign_in/widgets/body.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop, result) {
          if (!didPop) CustomDialog.showExitPopup(context);
        },
        child: MultiBlocProvider(
          providers: [
            BlocProvider.value(
              value: AppRouter.signInBloc,
            ),
            BlocProvider(
              create: (context) => PhoneNumberLoginCubit(),
            ),
          ],
          child: Body(),
        ),
      ),
    );
  }
}
