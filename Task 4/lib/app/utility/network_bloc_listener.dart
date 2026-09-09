import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skcl_vms/app/constant/route_name.dart';
import 'package:skcl_vms/logic/bloc/network/network_bloc.dart';

BlocListener networkListener() {
  return BlocListener<NetworkBloc, NetworkState>(
    listener: (context, state) {
      if (state is NetworkFailure) {
        Navigator.pushNamed(context, RouteName.NETWORK_ERROR_SCREEN);
      } else if (state is NetworkSuccess) {
        Navigator.popUntil(context, (route) => route.isFirst);
      }
    },
  );
}
