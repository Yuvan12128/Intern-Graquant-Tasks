import 'package:flutter/material.dart';
import 'package:skcl_vms/app/component/custom_date_picker.dart';
import 'package:skcl_vms/app/component/typography.dart';
import 'package:skcl_vms/app/constant/size_config.dart';
import 'package:skcl_vms/app/utility/date_filter.dart';

class DateFilter extends StatelessWidget {
  const DateFilter({
    Key? key,
    required this.title,
    required this.startDateController,
    required this.endDateController,
    required this.isFilter,
  }) : super(key: key);

  final String title;
  final TextEditingController startDateController;
  final TextEditingController endDateController;
  final bool isFilter;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 15.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: subtitle1.copyWith(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier * 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: SizeConfig.screenWidth / 2.55,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Start Date",
                      style: subtitle2.copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 2,
                    ),
                    CustomDatePicker(
                      controller: startDateController,
                      hintText: '',
                      validationFun: DateFilterUtility.startDateValidation,
                      isFilter: true,
                    ),
                  ],
                ),
              ),
              Container(
                width: SizeConfig.screenWidth / 2.55,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "End Date",
                      style: subtitle2.copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 2,
                    ),
                    CustomDatePicker(
                      controller: endDateController,
                      hintText: '',
                      validationFun: DateFilterUtility.endDateValidation,
                      isFilter: true,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
