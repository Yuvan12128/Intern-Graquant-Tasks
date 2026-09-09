import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skcl_vms/app/constant/app_constant.dart';
import 'package:skcl_vms/app/constant/enum/meeting_type.dart';
import 'package:skcl_vms/app/constant/route_name.dart';
import 'package:skcl_vms/app/constant/size_config.dart';
import 'package:skcl_vms/app/utility/user_authorization_listener.dart';
import 'package:skcl_vms/logic/bloc/user_authorization/user_authorization_bloc.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/model/visitor_entry.dart';
import 'package:skcl_vms/presentation/visitor_history/model/visitor_history.dart';
import 'package:skcl_vms/presentation/visitor_registry/widgets/visitor_registry_widgets.dart';

const String fileName =
    'visitor_register.widgets.visitor_register_screen_body.dart';

class VisitorRegistryScreenBody extends StatefulWidget {
  VisitorRegistryScreenBody({Key? key}) : super(key: key);

  @override
  _VisitorRegisteryScreenBodyState createState() =>
      _VisitorRegisteryScreenBodyState();
}

class _VisitorRegisteryScreenBodyState
    extends State<VisitorRegistryScreenBody> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 1 * SizeConfig.heightMultiplier,
          horizontal: 2 * SizeConfig.widthMultiplier,
        ),
        child: BlocConsumer<UserAuthorizationBloc, UserAuthorizationState>(
          listener: (context, state) {
            UserAuthorizationListener.userAuthorizationListener(
              context,
              state,
            );
          },
          builder: (context, state) {
            return Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    if (state.roleType == AppConstant.ADMINISTRATOR ||
                        state.roleType == AppConstant.SECURITY) ...[
                      VisitorRegistryWidgets.customButton(
                          context,
                          '${state.roleType == AppConstant.ADMINISTRATOR ? "Visitor Without Appointment" : "Visitor Registration"}',
                          () => {
                                Navigator.pushNamed(
                                  context,
                                  RouteName
                                      .VISITOR_PHONE_NUMBER_VERIFICATION_SCREEN,
                                ),
                              }),
                      SizedBox(
                        height: 8 * SizeConfig.heightMultiplier,
                      ),
                    ],
                    if (state.roleType == AppConstant.ADMINISTRATOR ||
                        state.roleType == AppConstant.RECEPTIONIST) ...[
                      VisitorRegistryWidgets.customButton(
                          context,
                          '${state.roleType == AppConstant.ADMINISTRATOR ? "Visitor With Appointment" : "Schedule an Appointment"}',
                          () => {
                                Navigator.pushNamed(
                                  context,
                                  RouteName.VISITOR_ENTRY_FORM_SCREEN,
                                  arguments: VisitorEntry(
                                    meetingType: MeetingType.PLANNED,
                                    phoneNumber: null,
                                    phoneNumberVerified: true,
                                  ),
                                ),
                              }),
                      SizedBox(
                        height: 8 * SizeConfig.heightMultiplier,
                      ),
                    ],
                    VisitorRegistryWidgets.customButton(
                        context,
                        "View Appointments",
                        () => {
                              Navigator.pushNamed(
                                context,
                                RouteName.VISITOR_HISTORY_SCREEN,
                                arguments: VisitorHistory(
                                  doPlannedVisitorRequired: true,
                                ),
                              ),
                            }),
                    SizedBox(
                      height: 8 * SizeConfig.heightMultiplier,
                    ),
                    VisitorRegistryWidgets.customButton(
                        context,
                        "Study All Pages (Catalog)",
                        () => {
                              Navigator.pushNamed(
                                context,
                                RouteName.ALL_PAGES_SCREEN,
                              ),
                            }),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
