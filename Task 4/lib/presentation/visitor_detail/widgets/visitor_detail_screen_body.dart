import 'package:flutter/material.dart';
import 'package:skcl_vms/app/component/custom_button.dart';
import 'package:skcl_vms/app/component/typography.dart';
import 'package:skcl_vms/app/constant/enum/meeting_type.dart';
import 'package:skcl_vms/app/constant/route_name.dart';
import 'package:skcl_vms/app/constant/size_config.dart';
import 'package:skcl_vms/app/utility/capitalize.dart';
import 'package:skcl_vms/app/utility/person_info.dart';
import 'package:skcl_vms/presentation/visitor_detail/bloc/visitor_detail/visitor_detail_delete_update_bloc.dart';
import 'package:skcl_vms/presentation/visitor_detail/model/visitor_detail.dart';
import 'package:skcl_vms/presentation/visitor_detail/widgets/visitor_detail_screen_widgets.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/model/visitor_entry.dart';
import 'package:skcl_vms/presentation/visitor_history/utility/visitor_history_utility.dart';

const String fileName =
    'visitor_detail.widgets.visitor_detail_screen_body.dart';

class VisitorDetailScreenBody extends StatefulWidget {
  final VisitorDetail? visitorDetail;
  final VisitorDeleteUpdateState state;
  VisitorDetailScreenBody({
    Key? key,
    required this.visitorDetail,
    required this.state,
  }) : super(key: key);
  @override
  _VisitorDetailScreenBodyState createState() =>
      _VisitorDetailScreenBodyState();
}

class _VisitorDetailScreenBodyState extends State<VisitorDetailScreenBody> {
  @override
  Widget build(BuildContext context) {
    bool canShow = false;
    VisitorDeleteUpdateState givenState = widget.state;
    if (givenState is VisitorDeleteButtonShowState && givenState.canShow) {
      canShow = true;
    }
    String visitingDate = VisitorHistoryUtility.dateBuilder(
      widget.visitorDetail?.visitoryHistory?.visitingDate,
    );
    String checkedInDate = VisitorHistoryUtility.dateBuilder(
      widget.visitorDetail?.visitoryHistory?.checkInDate,
    );
    bool? rawMeetingType = widget.visitorDetail?.visitoryHistory?.plannedVisit;
    String meetingType = MeetingType.UNPLANNED
        .toString()
        .split('.')
        .last
        .toLowerCase()
        .capitalizeFirstofEach;
    String fullName = PersonInfo.personNameBuilder(
      widget.visitorDetail?.visitoryHistory?.firstName,
      widget.visitorDetail?.visitoryHistory?.lastName,
    );
    if (rawMeetingType != null) {
      if (rawMeetingType) {
        meetingType = MeetingType.PLANNED
            .toString()
            .split('.')
            .last
            .toLowerCase()
            .capitalizeFirstofEach;
      }
    }
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: SizeConfig.heightMultiplier * 2,
            horizontal: SizeConfig.widthMultiplier * 7,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: SizeConfig.heightMultiplier * 1),
              Center(
                child: Text(
                  "Visitor Information",
                  style: subtitle1.copyWith(
                    fontSize: 4.5 * SizeConfig.textMultiplier,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 2),
              VisitorDetailScreenWidgets.textField(
                context,
                "Full name",
                fullName,
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 2),
              VisitorDetailScreenWidgets.textField(
                context,
                "Phone number",
                widget.visitorDetail?.visitoryHistory?.phoneNumber ?? '',
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 2),
              VisitorDetailScreenWidgets.textField(
                context,
                "Visitor type",
                widget.visitorDetail?.visitoryHistory?.type
                        .toString()
                        .split('.')
                        .last
                        .toLowerCase()
                        .capitalizeFirstofEach ??
                    '',
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 2),
              VisitorDetailScreenWidgets.textField(
                context,
                "Meeting Type",
                meetingType,
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 2),
              VisitorDetailScreenWidgets.textField(
                context,
                "Meeting date",
                visitingDate,
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 2),
              VisitorDetailScreenWidgets.textField(
                context,
                "Email",
                widget.visitorDetail?.visitoryHistory?.emailAddress ?? '',
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 2),
              VisitorDetailScreenWidgets.textField(
                context,
                "From company",
                widget.visitorDetail?.visitoryHistory?.comingFrom
                        ?.companyName ??
                    '',
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 2),
              VisitorDetailScreenWidgets.textField(
                context,
                "From place",
                widget.visitorDetail?.visitoryHistory?.comingFrom?.placeName ??
                    '',
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 2),
              VisitorDetailScreenWidgets.textField(
                context,
                "Id proof type",
                widget.visitorDetail?.visitoryHistory?.idProof?.type1
                        ?.toLowerCase()
                        .capitalizeFirstofEach ??
                    '',
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 2),
              VisitorDetailScreenWidgets.textField(
                context,
                "Id proof value",
                widget.visitorDetail?.visitoryHistory?.idProof?.value1 ?? '',
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 2),
              VisitorDetailScreenWidgets.textField(
                context,
                "Purpose of visit",
                widget.visitorDetail?.visitoryHistory?.purposeOfVisit ?? '',
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 2),
              VisitorDetailScreenWidgets.textField(
                context,
                "Notes",
                widget.visitorDetail?.visitoryHistory?.notes ?? '',
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 2),
              VisitorDetailScreenWidgets.textField(
                context,
                "Tools",
                widget.visitorDetail?.visitoryHistory?.tools ?? '',
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 2),
              VisitorDetailScreenWidgets.textField(
                context,
                "Checked in date",
                checkedInDate,
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 2),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Theme.of(context).colorScheme.primary,
                      width: 0.28 * SizeConfig.widthMultiplier,
                    ),
                  ),
                ),
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 2),
              Center(
                child: Text(
                  "Company Detail",
                  style: subtitle1.copyWith(
                    fontSize: 4.5 * SizeConfig.textMultiplier,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 2),
              VisitorDetailScreenWidgets.textField(
                context,
                "Company name",
                widget.visitorDetail?.visitoryHistory?.additionalDetails
                        ?.account?.name ??
                    '',
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 2),
              VisitorDetailScreenWidgets.textField(
                context,
                "Building name",
                widget.visitorDetail?.visitoryHistory?.additionalDetails?.place
                        ?.name ??
                    '',
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 2),
              VisitorDetailScreenWidgets.textField(
                context,
                "Block name",
                widget.visitorDetail?.visitoryHistory?.additionalDetails?.block
                        ?.name ??
                    '',
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 2),
              VisitorDetailScreenWidgets.textField(
                context,
                "Floor name",
                widget.visitorDetail?.visitoryHistory?.additionalDetails?.floor
                        ?.no
                        .toString() ??
                    '',
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 2),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Theme.of(context).colorScheme.primary,
                      width: 0.28 * SizeConfig.widthMultiplier,
                    ),
                  ),
                ),
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 2),
              Center(
                child: Text(
                  "Created By",
                  style: subtitle1.copyWith(
                    fontSize: 4.5 * SizeConfig.textMultiplier,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 2),
              VisitorDetailScreenWidgets.textField(
                context,
                "First name",
                widget.visitorDetail?.visitoryHistory?.createdByPerson
                        ?.firstName ??
                    '',
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 2),
              // VisitorDetailScreenWidgets.textField(
              //   context,
              //   "Last name",
              //   widget.visitorDetail?.visitoryHistory?.createdByPerson
              //           ?.lastName ??
              //       '',
              // ),
              // SizedBox(height: SizeConfig.heightMultiplier * 2),
              VisitorDetailScreenWidgets.textField(
                context,
                "Phone number",
                widget.visitorDetail?.visitoryHistory?.createdByPerson
                        ?.phoneNumber ??
                    '',
              ),
              if (canShow) ...[
                SizedBox(height: SizeConfig.heightMultiplier * 5),
                Center(
                  child: CustomFlatButton(
                    onpress: () async {
                      Navigator.pushNamed(
                        context,
                        RouteName.VISITOR_ENTRY_FORM_SCREEN,
                        arguments: VisitorEntry(
                          meetingType: (widget.visitorDetail?.visitoryHistory
                                          ?.plannedVisit !=
                                      null &&
                                  widget.visitorDetail?.visitoryHistory
                                          ?.plannedVisit ==
                                      false)
                              ? MeetingType.UNPLANNED
                              : MeetingType.PLANNED,
                          phoneNumber: widget
                              .visitorDetail?.visitoryHistory?.phoneNumber,
                          phoneNumberVerified: true,
                          visitorDetail: widget.visitorDetail?.visitoryHistory,
                        ),
                      );
                    },
                    widget: Text(
                      "Update",
                      style: subtitle1.copyWith(
                        color: Theme.of(context).colorScheme.tertiary,
                        fontSize: 4.5 * SizeConfig.textMultiplier,
                      ),
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
