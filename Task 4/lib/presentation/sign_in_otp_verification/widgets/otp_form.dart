import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:skcl_vms/app/component/custom_button.dart';
import 'package:skcl_vms/app/component/typography.dart';
import 'package:skcl_vms/app/constant/component_constant.dart';
import 'package:skcl_vms/app/constant/size_config.dart';
import 'package:skcl_vms/presentation/sign_in_otp_verification/utility/otp_utility.dart';

class OTPForm extends StatefulWidget {
  const OTPForm({
    Key? key,
    required this.enableResend,
    required this.resendCode,
    required this.verificationId,
    required this.fileName,
  }) : super(key: key);

  final bool enableResend;
  final Function resendCode;
  final String verificationId;
  final String fileName;

  @override
  State<OTPForm> createState() => _OTPForm();
}

class _OTPForm extends State<OTPForm> {
  final otpFormGlobalKey = GlobalKey<FormState>();
  TextEditingController? otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Form(
        key: otpFormGlobalKey,
        child: Column(
          children: [
            SizedBox(height: 15 * SizeConfig.heightMultiplier),
            SizedBox(
              width: SizeConfig.widthMultiplier * 40,
              child: TextFormField(
                controller: otpController,
                validator: (value) => OTPUtility.validationFun(value),
                onChanged: (value) => OTPUtility.onChangeFun(value, context),
                style: headline6.copyWith(
                    color: Theme.of(context).colorScheme.secondary),
                cursorColor: Theme.of(context).primaryColor,
                maxLength: 6,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                textAlign: TextAlign.center,
                decoration: underlineInputDecoration(context).copyWith(
                  hintStyle: subtitle1.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  counterStyle: bodyText2.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: 2.3 * SizeConfig.textMultiplier,
                  ),
                ),
                textInputAction: TextInputAction.done,
              ),
            ),
            Column(
              children: [
                SizedBox(height: SizeConfig.heightMultiplier * 14),
                if (widget.enableResend) ...[
                  Center(
                    child: Column(
                      children: [
                        Text(
                          "If you didn't get the OTP Please click",
                          textAlign: TextAlign.center,
                          style: subtitle2.copyWith(
                              color: Theme.of(context).colorScheme.secondary),
                        ),
                        TextButton(
                          onPressed: () => widget.resendCode(),
                          child: Text(
                            'Resend OTP',
                            textAlign: TextAlign.center,
                            style: subtitle1.copyWith(
                                color: Theme.of(context).colorScheme.primary),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
                SizedBox(
                    height: widget.enableResend
                        ? SizeConfig.heightMultiplier * 9
                        : SizeConfig.heightMultiplier * 14),
                if (widget.verificationId.isNotEmpty) ...[
                  Center(
                    child: CustomFlatButton(
                      onpress: () => {
                        if (otpFormGlobalKey.currentState!.validate())
                          {
                            OTPUtility.onOTPEntered(
                              context,
                              otpController!.text,
                              widget.verificationId,
                              widget.fileName,
                            ),
                            EasyLoading.show(),
                          },
                      },
                      buttonWidth: SizeConfig.widthMultiplier * 40,
                      buttonHeight: SizeConfig.screenWidth < 600
                          ? 16 * SizeConfig.widthMultiplier
                          : 11.5 * SizeConfig.widthMultiplier,
                      widget: Text(
                        'Verify',
                        style: subtitle1.copyWith(
                          color: Theme.of(context).colorScheme.tertiary,
                          fontSize: 4.5 * SizeConfig.textMultiplier,
                        ),
                      ),
                    ),
                  ),
                ] else ...[
                  CustomDisableButton(
                    widget: Text(
                      'Verify',
                      style: subtitle1.copyWith(
                        color: Theme.of(context).colorScheme.tertiary,
                        fontSize: 4.5 * SizeConfig.textMultiplier,
                      ),
                    ),
                    color: MaterialStateProperty.all<Color>(
                      Theme.of(context).colorScheme.primary.withOpacity(0.5),
                    ),
                    buttonWidth: SizeConfig.widthMultiplier * 40,
                    buttonHeight: SizeConfig.screenWidth < 600
                        ? 16 * SizeConfig.widthMultiplier
                        : 11.5 * SizeConfig.widthMultiplier,
                  ),
                ]
              ],
            ),
          ],
        ),
      ),
    );
  }
}
