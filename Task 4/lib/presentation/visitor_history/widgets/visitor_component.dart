import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skcl_vms/app/component/custom_progess_indicator.dart';
import 'package:skcl_vms/app/component/typography.dart';
import 'package:skcl_vms/app/constant/route_name.dart';
import 'package:skcl_vms/app/constant/size_config.dart';
import 'package:skcl_vms/app/utility/person_info.dart';
import 'package:skcl_vms/presentation/visitor_detail/model/visitor_detail.dart';
import 'package:skcl_vms/presentation/visitor_history/bloc/visitor_history/visitor_history_bloc.dart';
import 'package:skcl_vms/presentation/visitor_history/service/gql/visitor.graphql.dart';
import 'package:skcl_vms/presentation/visitor_history/utility/visitor_history_utility.dart';
import 'package:skcl_vms/presentation/visitor_history/widgets/visitor_history_screen_component.dart';

const String fileName = 'alerts.component.dart';

class VisitorHistoryComponent {
  static Widget visitorHistoryComponentContainer(
    BuildContext context,
    List<Query$Visitors$visitors$values?> visitorHistoryList,
    int index,
    VisitorHistoryState state,
  ) {
    if (index < visitorHistoryList.length) {
      return VisitorHistoryComponent.visitorHistoryContainer(
        context,
        visitorHistoryList[index],
        visitorHistoryList,
        index,
        state,
      );
    } else {
      return CustomProgressIndicator.customCircularProgressIndicator(context);
    }
  }

  static Widget visitorHistoryContainer(
    BuildContext context,
    Query$Visitors$visitors$values? visitoryHistory,
    List<Query$Visitors$visitors$values?> visitoryHistoryList,
    int index,
    VisitorHistoryState state,
  ) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.widthMultiplier * 5,
        vertical: SizeConfig.heightMultiplier * 2,
      ),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(
            RouteName.VISITOR_DETAIL_SCREEN,
            arguments: VisitorDetail(
              visitoryHistory: visitoryHistory,
            ),
          );
        },
        child: VisitorHistoryComponent.visitorHistorycard(
          context,
          visitoryHistory,
          state,
          index,
        ),
      ),
    );
  }

  static Card? visitorHistorycard(
    BuildContext context,
    Query$Visitors$visitors$values? visitoryHistory,
    VisitorHistoryState state,
    int index,
  ) {
    try {
      String visitorFullName = PersonInfo.personNameBuilder(
        visitoryHistory?.firstName,
        visitoryHistory?.lastName,
      );
      String companyName =
          visitoryHistory?.additionalDetails?.account?.name ?? '';
      String phoneNumber = visitoryHistory?.phoneNumber ?? '';
      String accountName =
          visitoryHistory?.additionalDetails?.place?.name ?? '';
      String visitingDate =
          VisitorHistoryUtility.dateBuilder(visitoryHistory?.visitingDate);
      DateTime? checkinDate = visitoryHistory?.checkInDate;
      return Card(
        elevation: 10,
        color: Theme.of(context).colorScheme.onBackground,
        child: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.widthMultiplier * 4,
              vertical: SizeConfig.heightMultiplier * 2,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                VisitorHistoryScreenComponent.visitorNameHeader(
                  context,
                  visitorFullName,
                ),
                SizedBox(
                  height: SizeConfig.widthMultiplier * 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    VisitorHistoryScreenComponent.column1(
                      context,
                      companyName,
                      phoneNumber,
                    ),
                    SizedBox(
                      width: SizeConfig.widthMultiplier * 4,
                    ),
                    VisitorHistoryScreenComponent.column2(
                      context,
                      accountName,
                      visitingDate,
                    ),
                  ],
                ),
                if (checkinDate != null) ...[
                  SizedBox(
                    width: SizeConfig.widthMultiplier * 3,
                  ),
                  Text(
                    'Checked in',
                    style: bodyText1.copyWith(
                      color: Colors.green,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ],
            ),
          ),
        ),
      );
    } catch (err) {
      context.read<VisitorHistoryBloc>().add(
            VisitorHistoryErrorEvent(
              err: err,
            ),
          );
      return null;
    }
  }
}
