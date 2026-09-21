import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skcl_vms/app/constant/size_config.dart';
import 'package:skcl_vms/app/log/util/log.dart';
import 'package:skcl_vms/presentation/company_contact/bloc/contact_name_bloc.dart';
import 'package:skcl_vms/presentation/company_contact/widgets/company_contact_screen_widgets.dart';

const String fileName =
    'company_contact.widgets.floor_contact_screen_body.dart';

class CompanyContactScreenBody extends StatefulWidget {
  CompanyContactScreenBody({Key? key}) : super(key: key);

  @override
  _CompanyContactScreenBodyState createState() =>
      _CompanyContactScreenBodyState();
}

class _CompanyContactScreenBodyState extends State<CompanyContactScreenBody> {
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
          vertical: SizeConfig.heightMultiplier * 1,
          horizontal: SizeConfig.widthMultiplier * 2,
        ),
        child: BlocConsumer<ContactNameBloc, ContactNameState>(
          listener: (context, state) {
            if (state.error != null) {
              Log.error(
                context,
                fileName,
                '_showing company contact persons',
                state.error,
                'Showing company contact persons',
                null,
                true,
                null,
                null,
              );
            }
          },
          builder: (context, state) {
            return BlocBuilder<ContactNameBloc, ContactNameState>(
              builder: (context, state) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ...CompanyContactScreenWidgets.getContactListWidgets(
                        context,
                        state,
                      )
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
