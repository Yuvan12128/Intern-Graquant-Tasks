import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skcl_vms/app/component/custom_progess_indicator.dart';
import 'package:skcl_vms/app/component/typography.dart';
import 'package:skcl_vms/app/constant/route_name.dart';
import 'package:skcl_vms/app/constant/size_config.dart';
import 'package:skcl_vms/app/utility/capitalize.dart';
import 'package:skcl_vms/data/graphql/services/account/gql/account.graphql.dart';
import 'package:skcl_vms/presentation/company_detail/model/company_detail.dart';
import 'package:skcl_vms/presentation/company_list/bloc/company_list/company_list_bloc.dart';

const String fileName = 'company_detail.widgets.company_detail_component.dart';

class CompanyListComponent {
  static Widget companyListContainer(
    BuildContext context,
    List<Query$Accounts$accounts$values?> accountsList,
    int index,
    CompanyListState state,
  ) {
    if (index < accountsList.length) {
      return CompanyListComponent.companyContainer(
        context,
        accountsList[index],
        index,
        state,
      );
    } else {
      return CustomProgressIndicator.customCircularProgressIndicator(context);
    }
  }

  static Widget companyContainer(
    BuildContext context,
    Query$Accounts$accounts$values? account,
    int index,
    CompanyListState state,
  ) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.widthMultiplier * 5,
        vertical: SizeConfig.heightMultiplier * 2,
      ),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(
            RouteName.COMPANY_DETAIL_SCREEN,
            arguments: CompanyDetail(
              companyDetail: account,
            ),
          );
        },
        child: CompanyListComponent.companycard(
          context,
          account,
        ),
      ),
    );
  }

  static Card? companycard(
    BuildContext context,
    Query$Accounts$accounts$values? account,
  ) {
    try {
      final String? companyName =
          account?.name?.toLowerCase().capitalizeFirstofEach;
      // final String? imageString = null;
      // Widget? imageWidget;
      // if (imageString != null) {
      //   imageWidget = Image.memory(
      //     Uint8List.fromList(imageString.cast<int>()),
      //     fit: BoxFit.cover,
      //   );
      // }
      return Card(
        elevation: 10,
        color: Theme.of(context).colorScheme.onSurface,
        child: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.widthMultiplier * 4,
              vertical: SizeConfig.heightMultiplier * 2,
            ),
            child: Container(
              height: SizeConfig.widthMultiplier * 40,
              width: SizeConfig.heightMultiplier * 40,
              child: Center(
                child: Text(
                  companyName ?? '',
                  style: subtitle1.copyWith(
                    fontSize: 4.5 * SizeConfig.textMultiplier,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
      );
    } catch (err) {
      context.read<CompanyListBloc>().add(
            CompanyListErrorEvent(
              err: err,
            ),
          );
      return null;
    }
  }
}
