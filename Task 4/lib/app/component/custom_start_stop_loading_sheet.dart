import 'dart:async';

import 'package:flutter/material.dart';
import 'package:skcl_vms/app/component/custom_progess_indicator.dart';
import 'package:skcl_vms/app/component/typography.dart';
import 'package:skcl_vms/app/constant/size_config.dart';

class CustomStartStopLoadingSheet extends StatefulWidget {
  CustomStartStopLoadingSheet({
    Key? key,
    required this.description,
    required this.secondsRemaining,
  }) : super(key: key);

  final String description;
  int secondsRemaining;

  @override
  State<CustomStartStopLoadingSheet> createState() =>
      _StartStopLoadingBottomSheetState();
}

class _StartStopLoadingBottomSheetState
    extends State<CustomStartStopLoadingSheet> {
  late Timer timer;
  // int secondsRemaining = secondsRemaining;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 1), (_) {
      if (widget.secondsRemaining != 0) {
        setState(() {
          widget.secondsRemaining--;
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: AlertDialog(
        backgroundColor: Theme.of(context).colorScheme.surface,
        actions: <Widget>[
          Container(
            height: SizeConfig.heightMultiplier * 25,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomProgressIndicator.buildProgressBarTile(
                  5,
                  Theme.of(context).colorScheme.surface,
                  Theme.of(context).colorScheme.primary,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Text(
                    widget.description,
                    style: subtitle1.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Text(
                    "${widget.secondsRemaining.toStringAsFixed(0)}",
                    style: subtitle1.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 6 * SizeConfig.textMultiplier,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
