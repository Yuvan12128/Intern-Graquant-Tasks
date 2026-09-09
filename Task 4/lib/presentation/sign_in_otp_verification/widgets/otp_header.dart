import 'package:flutter/material.dart';
import 'package:skcl_vms/app/component/typography.dart';
import 'package:skcl_vms/app/constant/size_config.dart';

class OTPHeader extends StatefulWidget {
  OTPHeader({
    Key? key,
    required this.phoneNumber,
    required this.secondsRemaining,
  }) : super(key: key);
  final String phoneNumber;
  final int secondsRemaining;
  @override
  _OTPHeaderState createState() => _OTPHeaderState();
}

class _OTPHeaderState extends State<OTPHeader> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 5 * SizeConfig.heightMultiplier,
          ),
          Text(
            'OTP Verification',
            style: subtitle2.copyWith(
                fontSize: 6 * SizeConfig.textMultiplier,
                color: Theme.of(context).colorScheme.secondary),
          ),
          SizedBox(
            height: 2 * SizeConfig.heightMultiplier,
          ),
          Text(
            'We sent your code to ${widget.phoneNumber}',
            style: subtitle1.copyWith(
                color: Theme.of(context).colorScheme.secondary),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10 * SizeConfig.widthMultiplier,
            ),
            child: Row(
              children: [
                Text(
                  "This code will expires in",
                  style: subtitle1.copyWith(
                      color: Theme.of(context).colorScheme.secondary),
                ),
                SizedBox(
                  width: 1 * SizeConfig.widthMultiplier,
                ),
                Text(
                  "00:${widget.secondsRemaining.toString().padLeft(2, '0')}",
                  style: subtitle1.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
