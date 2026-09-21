import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skcl_vms/app/component/custom_appbar.dart';
import 'package:skcl_vms/app/utility/network_bloc_listener.dart';
import 'package:skcl_vms/presentation/drawer/drawer_screen.dart';
import 'package:skcl_vms/presentation/visitor_history/model/visitor_history.dart';
import 'package:skcl_vms/presentation/visitor_history/widgets/filter_component.dart';
import 'package:skcl_vms/presentation/visitor_history/widgets/visitor_history_screen_body.dart';

class VisitorHistoryScreen extends StatelessWidget {
  final VisitorHistory arguments;
  VisitorHistoryScreen({Key? key, required this.arguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        networkListener(),
      ],
      child: Scaffold(
        drawer: DrawerScreen(),
        appBar: CustomAppBar.appBar(
          context,
          "Visitor History",
          true,
          null,
          [
            FilterComponent.filterIcon(context),
          ],
          true,
        ),
        body: VisitorHistoryScreenBody(
          doPlannedVisitorRequired: arguments.doPlannedVisitorRequired,
        ),
      ),
    );
  }
}
