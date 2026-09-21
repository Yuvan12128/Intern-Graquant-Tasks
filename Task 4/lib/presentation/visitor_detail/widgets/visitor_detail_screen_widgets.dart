import 'package:flutter/material.dart';
import 'package:skcl_vms/app/component/typography.dart';

class VisitorDetailScreenWidgets {
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
