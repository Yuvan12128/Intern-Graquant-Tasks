import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skcl_vms/app/component/custom_appbar.dart';
import 'package:skcl_vms/app/constant/app_constant.dart';
import 'package:skcl_vms/app/utility/network_bloc_listener.dart';
import 'package:skcl_vms/app/utility/user_authorization_listener.dart';
import 'package:skcl_vms/logic/bloc/user_authorization/user_authorization_bloc.dart';
import 'package:skcl_vms/presentation/company_list/widgets/company_list_screen_body.dart';
import 'package:skcl_vms/presentation/company_list/widgets/filter_component.dart';
import 'package:skcl_vms/presentation/drawer/drawer_screen.dart';

class CompanyListScreen extends StatelessWidget {
  CompanyListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        networkListener(),
      ],
      child: BlocConsumer<UserAuthorizationBloc, UserAuthorizationState>(
        listener: (context, state) {
          UserAuthorizationListener.userAuthorizationListener(
            context,
            state,
          );
        },
        builder: (context, state) {
          return Scaffold(
            drawer: DrawerScreen(),
            appBar: CustomAppBar.appBar(
              context,
              "Company List",
              true,
              null,
              state.roleType != AppConstant.RECEPTIONIST
                  ? [
                      FilterComponent.filterIcon(context),
                    ]
                  : null,
              true,
            ),
            body: CompanyListScreenBody(),
          );
        },
      ),
    );
  }
}
