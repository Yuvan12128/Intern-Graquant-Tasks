import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skcl_vms/app/component/custom_button.dart';
import 'package:skcl_vms/app/component/typography.dart';
import 'package:skcl_vms/app/constant/size_config.dart';
import 'package:skcl_vms/app/utility/person_info.dart';
import 'package:skcl_vms/app/utility/url_launcher.dart';
import 'package:skcl_vms/data/graphql/services/account/gql/account.graphql.dart';
import 'package:skcl_vms/presentation/company_contact/bloc/contact_name_bloc.dart';

class CompanyContactScreenWidgets {
  static List<Widget> getContactListWidgets(
    BuildContext context,
    ContactNameState state,
  ) {
    List<Widget> contactListWidgets = [];
    try {
      final List<Query$Accounts$accounts$values$places$blocks$floors$persons?>?
          contactList = state.contactList;
      if (contactList != null && contactList.length > 0) {
        contactList.forEach((
          Query$Accounts$accounts$values$places$blocks$floors$persons? contact,
        ) {
          String? contactPersonFullName = PersonInfo.personNameBuilder(
            contact?.firstName,
            contact?.lastName,
          );
          String? phoneNumber = contact?.phoneNumber;
          if (contactPersonFullName.length > 0 && phoneNumber != null) {
            contactListWidgets.add(
              CustomFlatIconButton(
                onpress: () {
                  try {
                    UrlLauncher.launchDialer(Uri.parse("tel:$phoneNumber"));
                  } catch (err) {
                    context.read<ContactNameBloc>().add(
                          ContactNameErrorEvent(
                            err: err,
                          ),
                        );
                  }
                },
                buttonWidth: SizeConfig.widthMultiplier * 90,
                buttonHeight: SizeConfig.screenWidth < 600
                    ? 16 * SizeConfig.widthMultiplier
                    : 11.5 * SizeConfig.widthMultiplier,
                widget: Text(
                  contactPersonFullName,
                  style: subtitle1.copyWith(
                    color: Theme.of(context).colorScheme.tertiary,
                    fontSize: 4.5 * SizeConfig.textMultiplier,
                  ),
                ),
                iconWidget: Icon(
                  Icons.call_rounded,
                  color: Theme.of(context).colorScheme.tertiary,
                  size: SizeConfig.widthMultiplier * 7,
                ),
              ),
            );
            contactListWidgets.add(
              SizedBox(
                height: SizeConfig.heightMultiplier * 8,
              ),
            );
          }
        });
      } else {
        contactListWidgets.add(
          Text(
            "No contact listed to call",
            style: subtitle1.copyWith(
              color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
            ),
          ),
        );
      }

      return contactListWidgets;
    } catch (err) {
      context.read<ContactNameBloc>().add(
            ContactNameErrorEvent(
              err: err,
            ),
          );
      contactListWidgets.add(
        Text(
          "No contact listed to call",
          style: subtitle1.copyWith(
            color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
          ),
        ),
      );
      return contactListWidgets;
    }
  }
}
