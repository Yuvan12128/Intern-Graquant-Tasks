import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skcl_vms/app/component/custom_appbar.dart';
import 'package:skcl_vms/app/utility/network_bloc_listener.dart';
import 'package:skcl_vms/presentation/company_detail/model/company_detail.dart';
import 'package:skcl_vms/presentation/company_detail/widgets/company_detail_screen_body.dart';

class CompanyDetailScreen extends StatelessWidget {
  final CompanyDetail? arguments;
  CompanyDetailScreen({Key? key, required this.arguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        networkListener(),
      ],
      child: Scaffold(
        appBar: CustomAppBar.appBar(
          context,
          "Company Detail",
          true,
          null,
          null,
          true,
        ),
        body: CompanyDetailScreenBody(
          companyDetail: arguments,
        ),
      ),
    );
  }
}
