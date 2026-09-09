import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skcl_vms/app/constant/images.dart';
import 'package:skcl_vms/app/constant/size_config.dart';
import 'package:skcl_vms/app/utility/app_auth_bloc_listener.dart';
import 'package:skcl_vms/app/utility/network_bloc_listener.dart';
import 'package:skcl_vms/app/utility/update_app_listener.dart';
import 'package:skcl_vms/presentation/sign_in/widgets/mobile_auth.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        appAuthBlocListener(fileName),
        networkListener(),
        updateHandler(),
      ],
      child: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 1 * SizeConfig.heightMultiplier,
              horizontal: 2 * SizeConfig.widthMultiplier,
            ),
            child: Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 40 * SizeConfig.heightMultiplier,
                  child: Image.asset(
                    Images.logo_combined,
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  height: 50 * SizeConfig.heightMultiplier,
                  child: MobileAuth(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
