import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skcl_vms/app/component/custom_appbar.dart';
import 'package:skcl_vms/app/utility/network_bloc_listener.dart';
import 'package:skcl_vms/presentation/company_contact/bloc/contact_name_bloc.dart';
import 'package:skcl_vms/presentation/company_contact/widgets/company_contact_screen_body.dart';

class CompanyContactScreen extends StatelessWidget {
  CompanyContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        networkListener(),
      ],
      child: BlocBuilder<ContactNameBloc, ContactNameState>(
        builder: (context, state) {
          return Scaffold(
            appBar: CustomAppBar.appBar(
              context,
              "${state.companyName ?? 'Company'} Contact",
              false,
              null,
              null,
              true,
            ),
            body: CompanyContactScreenBody(),
          );
        },
      ),
    );
  }
}
