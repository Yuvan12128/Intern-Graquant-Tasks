import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skcl_vms/app/constant/app_constant.dart';
import 'package:skcl_vms/app/constant/route_name.dart';
import 'package:skcl_vms/app/constant/size_config.dart';
import 'package:skcl_vms/app/utility/app_auth_bloc_listener.dart';
import 'package:skcl_vms/app/utility/user_authorization_listener.dart';
import 'package:skcl_vms/logic/bloc/user_authorization/user_authorization_bloc.dart';
import 'package:skcl_vms/presentation/drawer/widgets/drawer_component.dart';
import 'package:skcl_vms/presentation/drawer/widgets/logo_container.dart';
import 'package:skcl_vms/presentation/visitor_history/model/visitor_history.dart';

const String fileName = 'drawer_screen.component.profile_view.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        appAuthBlocListener(fileName),
      ],
      child: Drawer(
        width: SizeConfig.widthMultiplier * 75,
        child: SafeArea(
          child: Material(
            color: Theme.of(context).colorScheme.surface,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  BlocConsumer<UserAuthorizationBloc, UserAuthorizationState>(
                listener: (context, state) {
                  UserAuthorizationListener.userAuthorizationListener(
                    context,
                    state,
                  );
                },
                builder: (context, state) {
                  return ListView(
                    children: <Widget>[
                      LogoContainer(),
                      DrawerComponent.listTile(
                        context,
                        'My Profile',
                        Icons.person_outline_outlined,
                        () => {
                          Navigator.of(context)
                              .pushNamed(RouteName.PROFILE_SCREEN)
                        },
                      ),
                      DrawerComponent.listTile(
                        context,
                        'Visitor History',
                        Icons.person_outline_outlined,
                        () => {
                          Navigator.of(context).pushNamed(
                            RouteName.VISITOR_HISTORY_SCREEN,
                            arguments: VisitorHistory(
                              doPlannedVisitorRequired: false,
                            ),
                          )
                        },
                      ),
                      DrawerComponent.listTile(
                        context,
                        'Company Info',
                        Icons.work_outline_outlined,
                        () => {
                          Navigator.of(context)
                              .pushNamed(RouteName.COMPANY_LIST_SCREEN)
                        },
                      ),
                      if (state.roleType == AppConstant.SECURITY) ...[
                        DrawerComponent.listTile(
                          context,
                          'Settings',
                          Icons.settings_outlined,
                          () => {
                            Navigator.of(context)
                                .pushNamed(RouteName.SETTING_SCREEN)
                          },
                        ),
                      ],
                      DrawerComponent.listTile(
                        context,
                        'Logout',
                        Icons.logout_outlined,
                        () async {
                          await DrawerComponent.logout(context);
                        },
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
