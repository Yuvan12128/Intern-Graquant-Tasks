import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skcl_vms/app/component/custom_appbar.dart';
import 'package:skcl_vms/app/utility/network_bloc_listener.dart';
import 'package:skcl_vms/presentation/setting_page/widgets/setting_screen_body.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        networkListener(),
      ],
      child: Scaffold(
        appBar: CustomAppBar.appBar(
          context,
          "Settings",
          true,
          null,
          null,
          true,
        ),
        body: SettingScreenBody(),
      ),
    );
  }
}
