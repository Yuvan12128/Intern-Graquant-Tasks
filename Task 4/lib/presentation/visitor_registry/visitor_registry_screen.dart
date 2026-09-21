import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skcl_vms/app/component/custom_appbar.dart';
import 'package:skcl_vms/app/component/custom_dialog.dart';
import 'package:skcl_vms/app/utility/network_bloc_listener.dart';
import 'package:skcl_vms/app/utility/update_app_listener.dart';
import 'package:skcl_vms/presentation/drawer/drawer_screen.dart';
import 'package:skcl_vms/presentation/router.dart';
import 'package:skcl_vms/presentation/visitor_registry/widgets/visitor_registry_screen_body.dart';
import 'package:skcl_vms/presentation/visitor_registry/widgets/visitor_registry_widgets.dart';

class VisitorRegistryScreen extends StatelessWidget {
  VisitorRegistryScreen({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        networkListener(),
        updateHandler(),
      ],
      child: Scaffold(
        key: _key,
        drawer: BlocProvider.value(
          value: AppRouter.userAuthorizationBloc,
          child: DrawerScreen(),
        ),
        appBar: CustomAppBar.appBar(
          context,
          "SKCL Visitor Book",
          true,
          VisitorRegistryWidgets.visitorRegisterLeadingIcon(_key),
          null,
          false,
        ),
        body: PopScope(
          canPop: false,
          onPopInvokedWithResult: (didPop, result) {
            if (!didPop) CustomDialog.showExitPopup(context);
          },
          child: BlocProvider.value(
            value: AppRouter.userAuthorizationBloc,
            child: VisitorRegistryScreenBody(),
          ),
        ),
      ),
    );
  }
}
