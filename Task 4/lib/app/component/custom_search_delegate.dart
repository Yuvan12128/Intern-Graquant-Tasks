import 'package:flutter/material.dart';
import 'package:skcl_vms/app/component/typography.dart';
import 'package:skcl_vms/app/constant/size_config.dart';
import 'package:skcl_vms/data/model/search_delegate.dart';

class CustomSearchDelegate extends SearchDelegate {
  CustomSearchDelegate({
    required this.searchLabel,
    required this.listItems,
    required this.context,
  });
  final String searchLabel;
  final List<SearchDelegateModel> listItems;
  final BuildContext context;

  @override
  TextStyle? get searchFieldStyle {
    return query.isEmpty
        ? subtitle1.copyWith(
            color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
          )
        : subtitle1.copyWith(
            color: Theme.of(context).colorScheme.secondary,
          );
  }

  @override
  String? get searchFieldLabel {
    return searchLabel;
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      Padding(
        padding: EdgeInsets.only(
          right: SizeConfig.screenWidth < 600
              ? 0 * SizeConfig.widthMultiplier
              : 5 * SizeConfig.widthMultiplier,
        ),
        child: IconButton(
          onPressed: () {
            query = '';
          },
          icon: Icon(
            Icons.close_rounded,
            color: Theme.of(context).colorScheme.primary,
            size: SizeConfig.screenWidth < 600
                ? SizeConfig.imageSizeMultiplier * 7
                : SizeConfig.imageSizeMultiplier * 5,
          ),
        ),
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        color: Theme.of(context).colorScheme.primary,
        size: SizeConfig.screenWidth < 600
            ? SizeConfig.imageSizeMultiplier * 7
            : SizeConfig.imageSizeMultiplier * 5,
        progress: transitionAnimation,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return new Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List<SearchDelegateModel> suggestions = query.isEmpty
        ? listItems
        : listItems
            .where((item) =>
                item.getName.toLowerCase().contains(query.toLowerCase()))
            .toList();
    return ListView.builder(
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 2,
        ),
        child: new ListTile(
          onTap: () {
            close(context, suggestions[index]);
          },
          title: new Text(
            suggestions[index].getName,
            style: subtitle1.copyWith(
              color: Theme.of(context).colorScheme.secondary.withOpacity(0.8),
            ),
          ),
          visualDensity: VisualDensity(horizontal: 0, vertical: -4),
        ),
      ),
      itemCount: suggestions.length,
    );
  }
}
