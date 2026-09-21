import 'package:flutter/material.dart';
import 'package:skcl_vms/app/constant/route_name.dart';
import 'package:skcl_vms/presentation/error/widgets/error_component.dart';

const String fileName = 'error_screen.component.body.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void onTapFunc() {
      Navigator.of(context).pushNamedAndRemoveUntil(
          RouteName.VISITOR_REGISTRY_SCREEN, (route) => false);
    }

    return ErrorComponent.errorComponent(
      context,
      onTapFunc,
    );
  }
}
