import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skcl_vms/app/component/custom_appbar.dart';
import 'package:skcl_vms/app/constant/app_constant.dart';
import 'package:skcl_vms/app/constant/enum/meeting_type.dart';
import 'package:skcl_vms/app/utility/network_bloc_listener.dart';
import 'package:skcl_vms/app/utility/user_authorization_listener.dart';
import 'package:skcl_vms/logic/bloc/user_authorization/user_authorization_bloc.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/model/visitor_entry.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/widgets/visitor_entry_form_screen_body.dart';

class VisitorEntryFormScreen extends StatelessWidget {
  final VisitorEntry arguments;
  const VisitorEntryFormScreen({
    Key? key,
    required this.arguments,
  }) : super(key: key);

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
            appBar: CustomAppBar.appBar(
              context,
              arguments.visitorDetail == null
                  ? (arguments.meetingType == MeetingType.UNPLANNED
                      ? "${state.roleType == AppConstant.ADMINISTRATOR ? "Visitor Without Appointment" : "Visitor Registration"}"
                      : "${state.roleType == AppConstant.ADMINISTRATOR ? "Visitor With Appointment" : "Schedule an Appointment"}")
                  : "Visitor Update",
              arguments.visitorDetail == null
                  ? arguments.meetingType == MeetingType.PLANNED
                  : true,
              null,
              null,
              true,
            ),
            body: VisitorEntryFormScreenBody(
              meetingType: arguments.meetingType,
              phoneNumber: arguments.phoneNumber,
              phoneNumberVerified: arguments.phoneNumberVerified ?? false,
              visitorDetail: arguments.visitorDetail,
            ),
          );
        },
      ),
    );
  }
}
