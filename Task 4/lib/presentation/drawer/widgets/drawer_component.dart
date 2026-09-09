import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skcl_vms/app/component/typography.dart';
import 'package:skcl_vms/app/constant/size_config.dart';
import 'package:skcl_vms/app/log/util/log.dart';
import 'package:skcl_vms/logic/bloc/app_auth/app_auth_bloc.dart';
import 'package:skcl_vms/logic/bloc/theme/theme_bloc.dart';
import 'package:skcl_vms/presentation/drawer/widgets/logo_container.dart';

class DrawerComponent {
  static ListTile listTile(
    BuildContext context,
    String title,
    IconData icon,
    Function func,
  ) {
    return ListTile(
      leading: Icon(
        icon,
        color: Theme.of(context).primaryColor,
        size: SizeConfig.imageSizeMultiplier * 6,
      ),
      title: Text(
        title,
        style: subtitle1.copyWith(
          color: Theme.of(context).colorScheme.secondary.withOpacity(0.8),
        ),
      ),
      onTap: () async {
        await func();
      },
      focusColor: Theme.of(context).primaryColor,
      dense: true,
      minVerticalPadding: 15,
      minLeadingWidth: 0,
    );
  }

  static Widget darkThemeSwitch(
    BuildContext context,
    IconData lightIcon,
    IconData darkIcon,
    String title,
  ) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return ListTile(
          leading: Icon(
            state.themeMode == ThemeMode.dark ? darkIcon : lightIcon,
            color: Theme.of(context).primaryColor,
            size: SizeConfig.imageSizeMultiplier * 6,
          ),
          title: Text(
            title,
            style: subtitle1.copyWith(
              color: Theme.of(context).colorScheme.secondary.withOpacity(0.8),
            ),
          ),
          trailing: Transform.scale(
            scale: SizeConfig.screenWidth < 600 ? 1 : 2,
            child: Switch(
              value: state.themeMode == ThemeMode.dark ? true : false,
              onChanged: (val) {
                context.read<ThemeBloc>().add(
                      ThemeToggleEvent(
                          themeMode: val ? ThemeMode.dark : ThemeMode.light),
                    );
              },
            ),
          ),
          minVerticalPadding: 15,
          minLeadingWidth: 0,
        );
      },
    );
  }

  static Future<void> logout(BuildContext context) async {
    try {
      context.read<AppAuthBloc>().add(OnAppUserLoggedOut());
    } catch (err) {
      Log.error(
        context,
        fileName,
        'logout',
        err,
        'Logout',
        null,
        false,
        null,
        null,
      );
    }
  }
}
