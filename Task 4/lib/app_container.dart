import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:skcl_vms/presentation/app_bloc_provider.dart';
import 'package:skcl_vms/app/constant/size_config.dart';

class AppContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          SizeConfig().init(constraints);
          return GestureDetector(
            onTap: () {
              FocusScopeNode currentFocus = FocusScope.of(context);
              if (!currentFocus.hasPrimaryFocus &&
                  currentFocus.focusedChild != null) {
                FocusManager.instance.primaryFocus!.unfocus();
              }
            },
            child: AppBlocProvider(),
          );
        },
      ),
    );
  }
}
