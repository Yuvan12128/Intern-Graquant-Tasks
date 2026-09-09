import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skcl_vms/app/component/custom_appbar.dart';
import 'package:skcl_vms/app/utility/network_bloc_listener.dart';
import 'package:skcl_vms/app/utility/user_authorization_listener.dart';
import 'package:skcl_vms/logic/bloc/user_authorization/user_authorization_bloc.dart';
import 'package:skcl_vms/presentation/visitor_detail/bloc/visitor_detail/visitor_detail_delete_update_bloc.dart';
import 'package:skcl_vms/presentation/visitor_detail/model/visitor_detail.dart';
import 'package:skcl_vms/presentation/visitor_detail/widgets/visitor_detail_screen_body.dart';
import 'package:skcl_vms/presentation/visitor_detail/widgets/visitor_detail_screen_component.dart';

String fileName = "presentation/visitor_detail/visitor_detail_screen.dart";

class VisitorDetailScreen extends StatefulWidget {
  final VisitorDetail? arguments;
  VisitorDetailScreen({Key? key, required this.arguments}) : super(key: key);

  @override
  State<VisitorDetailScreen> createState() => _VisitorDetailScreenState();
}

class _VisitorDetailScreenState extends State<VisitorDetailScreen> {
  @override
  void initState() {
    super.initState();
    context
        .read<VisitorUpdateDeleteBloc>()
        .add(VisitorDeleteButtonShowEvent(visitorDetail: widget.arguments));
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        networkListener(),
        BlocListener<VisitorUpdateDeleteBloc, VisitorDeleteUpdateState>(
          listener: (context, state) {
            VisitorDetailScreenComponent.blocListener(
              context,
              state,
              fileName,
            );
          },
        ),
      ],
      child: BlocConsumer<UserAuthorizationBloc, UserAuthorizationState>(
        listener: (context, state) {
          UserAuthorizationListener.userAuthorizationListener(
            context,
            state,
          );
        },
        builder: (context, state) {
          return BlocBuilder<VisitorUpdateDeleteBloc, VisitorDeleteUpdateState>(
            builder: (context, visitorDeleteUpdateState) {
              return Scaffold(
                appBar: CustomAppBar.appBar(
                  context,
                  "Visitor Detail",
                  true,
                  null,
                  [
                    VisitorDetailScreenComponent.checkedInIcon(
                      context,
                      widget.arguments?.visitoryHistory,
                      state,
                    ),
                    VisitorDetailScreenComponent.deleteIcon(
                      context,
                      widget.arguments?.visitoryHistory?.id,
                      visitorDeleteUpdateState,
                    ),
                  ],
                  true,
                ),
                body: VisitorDetailScreenBody(
                  visitorDetail: widget.arguments,
                  state: visitorDeleteUpdateState,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
