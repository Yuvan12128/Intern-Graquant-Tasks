import 'package:flutter/material.dart';
import 'package:skcl_vms/app/constant/size_config.dart';
import 'package:skcl_vms/presentation/company_detail/model/company_detail.dart';
import 'package:skcl_vms/presentation/company_detail/widgets/company_detail_screen_widgets.dart';

const String fileName =
    'company_detail.widgets.company_detail_screen_body.dart';

class CompanyDetailScreenBody extends StatefulWidget {
  final CompanyDetail? companyDetail;
  CompanyDetailScreenBody({
    Key? key,
    required this.companyDetail,
  }) : super(key: key);
  @override
  _CompanyDetailScreenBodyState createState() =>
      _CompanyDetailScreenBodyState();
}

class _CompanyDetailScreenBodyState extends State<CompanyDetailScreenBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: SizeConfig.heightMultiplier * 2,
            horizontal: SizeConfig.widthMultiplier * 7,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: CompanyDetailScreenWidgets.companyDetailBuilder(
              context,
              widget.companyDetail,
            ),
          ),
        ),
      ),
    );
  }
}
