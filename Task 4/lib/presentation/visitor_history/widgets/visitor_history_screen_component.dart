import 'package:flutter/material.dart';
import 'package:skcl_vms/app/component/typography.dart';
import 'package:skcl_vms/app/constant/size_config.dart';

class VisitorHistoryScreenComponent {
  static Container visitorNameHeader(
    BuildContext context,
    String visitorFullName,
  ) {
    return Container(
      child: Text(
        visitorFullName,
        style: subtitle1.copyWith(
          color: Theme.of(context).colorScheme.primary,
        ),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  static Container columnDetailContainer(
    BuildContext context,
    String header,
    String value,
  ) {
    return Container(
      height: SizeConfig.widthMultiplier * 20,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            header,
            style: bodyText2.copyWith(
              color: Theme.of(context).colorScheme.secondary,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            value,
            style: bodyText1.copyWith(
              color: Theme.of(context).colorScheme.secondary,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  static Container column1(
    BuildContext context,
    String companyName,
    String phoneNumber,
  ) {
    return Container(
      width: 35 * SizeConfig.widthMultiplier,
      height: 40 * SizeConfig.widthMultiplier,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          columnDetailContainer(
            context,
            'Company Name',
            companyName,
          ),
          columnDetailContainer(
            context,
            'Mobile No',
            phoneNumber,
          ),
        ],
      ),
    );
  }

  static Container column2(
    BuildContext context,
    String buildingName,
    String visitingDate,
  ) {
    return Container(
      width: 35 * SizeConfig.widthMultiplier,
      height: 40 * SizeConfig.widthMultiplier,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          columnDetailContainer(
            context,
            'Building Name',
            buildingName,
          ),
          columnDetailContainer(
            context,
            'Time',
            visitingDate,
          ),
        ],
      ),
    );
  }
}
