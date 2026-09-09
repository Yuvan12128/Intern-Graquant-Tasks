import 'package:flutter/material.dart';
import 'package:skcl_vms/app/component/typography.dart';
import 'package:skcl_vms/app/constant/size_config.dart';
import 'package:skcl_vms/app/log/util/log.dart';
import 'package:skcl_vms/app/utility/person_info.dart';
import 'package:skcl_vms/app/utility/url_launcher.dart';
import 'package:skcl_vms/data/graphql/services/account/gql/account.graphql.dart';
import 'package:skcl_vms/presentation/company_detail/model/company_detail.dart';

const String fileName = 'company_detail.widgets.company_detail_screen_widgets';

class CompanyDetailScreenWidgets {
  static List<Widget> companyDetailBuilder(
    BuildContext context,
    CompanyDetail? companyDetail,
  ) {
    List<Widget> companyDetailList = [];
    companyDetailList.add(
      Center(
        child: Text(
          companyDetail?.companyDetail?.name ?? '',
          style: subtitle1.copyWith(
            fontSize: 4.5 * SizeConfig.textMultiplier,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
    );
    companyDetailList.add(
      SizedBox(height: SizeConfig.heightMultiplier * 2),
    );
    companyDetail?.companyDetail?.places
        ?.forEach((Query$Accounts$accounts$values$places? place) {
      if (place != null) {
        companyDetailList.add(
          SizedBox(height: SizeConfig.heightMultiplier * 1),
        );
        companyDetailList.add(
          CompanyDetailScreenWidgets.textField(
            context,
            "Building",
            place.name ?? '',
          ),
        );
        companyDetailList.add(
          SizedBox(height: SizeConfig.heightMultiplier * 2),
        );
        List<Widget> blockDetailList = [];
        place.blocks
            ?.forEach((Query$Accounts$accounts$values$places$blocks? block) {
          if (block != null) {
            blockDetailList.add(
              CompanyDetailScreenWidgets.textField(
                context,
                "Block",
                block.name ?? '',
              ),
            );
            blockDetailList.add(
              SizedBox(height: SizeConfig.heightMultiplier * 2),
            );
            List<Widget> floorDetailList = [];
            block.floors?.forEach(
                (Query$Accounts$accounts$values$places$blocks$floors? floor) {
              if (floor != null) {
                floorDetailList.add(
                  CompanyDetailScreenWidgets.textField(
                    context,
                    "Floor",
                    floor.no.toString(),
                  ),
                );
                floorDetailList.add(
                  SizedBox(height: SizeConfig.heightMultiplier * 2),
                );
                floorDetailList.add(
                  Text(
                    'Contact',
                    style: subtitle1.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                );
                List<Widget> contactDetail = [];
                floor.persons?.forEach(
                    (Query$Accounts$accounts$values$places$blocks$floors$persons?
                        person) {
                  final String visitorFullName = PersonInfo.personNameBuilder(
                    person?.firstName,
                    person?.lastName,
                  );
                  final String? emailAddress = person?.emailAddress;
                  final String? phoneNumber = person?.phoneNumber;
                  if (visitorFullName.length > 0) {
                    contactDetail.add(
                      Text(
                        visitorFullName,
                        style: subtitle2.copyWith(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    );
                  }
                  if (emailAddress != null && emailAddress.length > 0) {
                    contactDetail.add(
                      Text(
                        person?.emailAddress ?? '',
                        style: subtitle2.copyWith(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    );
                  }
                  if (phoneNumber != null && phoneNumber.length > 0) {
                    contactDetail.add(
                      Row(
                        children: [
                          Text(
                            person?.phoneNumber ?? '',
                            style: subtitle2.copyWith(
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                          SizedBox(
                            width: SizeConfig.widthMultiplier * 2,
                          ),
                          if (person?.phoneNumber != null) ...[
                            InkWell(
                              onTap: () {
                                try {
                                  UrlLauncher.launchDialer(
                                      Uri.parse("tel:${person!.phoneNumber}"));
                                } catch (err) {
                                  Log.error(
                                    context,
                                    fileName,
                                    'phone number dial launcher',
                                    new Exception(
                                        'Error occured while navigating phone dial pad'),
                                    'Error occured while navigating phone dial pad',
                                    "Something went wrong!..",
                                    false,
                                    null,
                                    null,
                                  );
                                }
                              },
                              child: Icon(
                                Icons.call_rounded,
                                color: Theme.of(context).colorScheme.primary,
                                size: SizeConfig.widthMultiplier * 5,
                              ),
                            ),
                          ],
                        ],
                      ),
                    );
                  }
                  contactDetail.add(
                    SizedBox(height: SizeConfig.heightMultiplier * 2),
                  );
                });
                floorDetailList.addAll(contactDetail);
              }
            });
            blockDetailList.addAll(floorDetailList);
          }
        });
        companyDetailList.addAll(blockDetailList);
        companyDetailList.add(
          SizedBox(height: SizeConfig.heightMultiplier * 2),
        );
        companyDetailList.add(
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
        );
      }
    });
    return companyDetailList;
  }

  static Container textField(
    BuildContext context,
    String heading,
    String value,
  ) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            heading,
            style: subtitle1.copyWith(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          Text(
            value,
            style: subtitle2.copyWith(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ],
      ),
    );
  }
}
