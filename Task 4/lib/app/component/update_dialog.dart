import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skcl_vms/app/component/typography.dart';
import 'package:skcl_vms/logic/bloc/update_app/update_app_bloc.dart';

class UpdateIOSDialog extends StatefulWidget {
  const UpdateIOSDialog({
    Key? key,
    required this.currentVersion,
    required this.latestVersion,
    required this.appLink,
  }) : super(key: key);

  final String currentVersion;
  final String latestVersion;
  final String appLink;
  @override
  State<UpdateIOSDialog> createState() => _UpdateIOSDialogState();
}

class _UpdateIOSDialogState extends State<UpdateIOSDialog> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoAlertDialog(
        title: Text(
          'Update Available',
          style: headline6.copyWith(
            color: Theme.of(context).colorScheme.secondary,
          ),
          textAlign: TextAlign.center,
        ),
        content: Text(
          'Get the latest features with the new version of our app! Update to ${widget.latestVersion} now.',
          style: subtitle1.copyWith(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.read<UpdateAppBloc>().add(UpdateMaybeLaterEvent());
            },
            child: Text(
              'Maybe Later',
              style: subtitle2.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              context.read<UpdateAppBloc>().add(AppUpdateEvent());
            },
            child: Text(
              'Update',
              style: subtitle2.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class UpdateAndroidDialog extends StatefulWidget {
  const UpdateAndroidDialog({
    Key? key,
    required this.currentVersion,
    required this.latestVersion,
    required this.appLink,
  }) : super(key: key);

  final String currentVersion;
  final String latestVersion;
  final String appLink;
  @override
  State<UpdateAndroidDialog> createState() => _UpdateAndroidDialogState();
}

class _UpdateAndroidDialogState extends State<UpdateAndroidDialog> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AlertDialog(
        title: Text(
          'Update Available',
          style: headline6.copyWith(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        content: Text(
          'Get the latest features with the new version of our app! Update to ${widget.latestVersion} now.',
          style: subtitle1.copyWith(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.read<UpdateAppBloc>().add(UpdateMaybeLaterEvent());
            },
            child: Text(
              'Maybe Later',
              style: subtitle2.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              context.read<UpdateAppBloc>().add(AppUpdateEvent());
            },
            child: Text(
              'Update',
              style: subtitle2.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
