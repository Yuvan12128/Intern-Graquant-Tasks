import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skcl_vms/app/component/custom_progess_indicator.dart';
import 'package:skcl_vms/app/constant/component_constant.dart';
import 'package:skcl_vms/app/log/util/log.dart';
import 'package:skcl_vms/data/graphql/services/account/gql/account.graphql.dart';
import 'package:skcl_vms/presentation/company_list/bloc/company_list/company_list_bloc.dart';
import 'package:skcl_vms/presentation/company_list/bloc/company_list_initial_filter/company_list_initial_filter_bloc.dart';
import 'package:skcl_vms/presentation/company_list/bloc/filter/company_list_filter_bloc.dart';
import 'package:skcl_vms/presentation/company_list/widgets/company_list_component.dart';

const String fileName =
    'company_detail.widgets.company_detail_screen_body.dart';

class CompanyListScreenBody extends StatefulWidget {
  CompanyListScreenBody({Key? key}) : super(key: key);
  @override
  _CompanyListScreenBody createState() => _CompanyListScreenBody();
}

class _CompanyListScreenBody extends State<CompanyListScreenBody> {
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    scrollController.addListener(_onScroll);
    // context.read<CompanyListInitialFilterBloc>().add(
    //       CompanyListInitialFilterResetEvent(
    //         doPlannedFilterRequired: widget.doPlannedVisitorRequired,
    //       ),
    //     );
    // if (widget.doClearFilter) {
    //   context.read<CompanyListFilterBloc>().add(ClearFilterEvent());
    // } else {
    //   context.read<CompanyListBloc>().add(CompanyListListRefreshEvent());
    // }
    context.read<CompanyListFilterBloc>().add(ClearFilterEvent());
  }

  @override
  void dispose() {
    scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      context.read<CompanyListBloc>().add(CompanyListFetchedEvent());
    }
  }

  bool get _isBottom {
    if (!scrollController.hasClients) return false;
    final maxScroll = scrollController.position.maxScrollExtent;
    final currentScroll = scrollController.offset;
    return currentScroll >= maxScroll;
  }

  void errorHandler(Object? error) {
    Log.error(
      context,
      fileName,
      '_fetchCompanyList',
      error,
      'Fetching Company List',
      null,
      true,
      null,
      null,
    );
  }

  Future<void> refresh() async {
    context.read<CompanyListBloc>().add(CompanyListRefreshEvent());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<CompanyListInitialFilterBloc,
          CompanyListInitialFilterState>(
        listener: (context, state) {
          if (state is CompanyListInitialFilterResetErrorState) {
            Log.error(
              context,
              fileName,
              'Error on reseting company detail filter',
              state.error,
              'Error on reseting company detail filter',
              null,
              true,
              null,
              null,
            );
          }
        },
        builder: (context, state) {
          if (state is CompanyListInitialFilterResetLoadingState) {
            return CustomProgressIndicator.customCircularProgressIndicator(
                context);
          }

          if (state is CompanyListInitialFilterResetErrorState) {
            return Container();
          }
          return BlocConsumer<CompanyListBloc, CompanyListState>(
            listener: (context, state) {
              if (state.error != null) {
                errorHandler(state.error);
              }
            },
            builder: (context, state) {
              if (state.isInfiniteFetchLoading == true) {
                return CustomProgressIndicator.customCircularProgressIndicator(
                    context);
              }
              List<Query$Accounts$accounts$values?> companyList = [];
              bool loading = false;
              companyList = state.accountList;
              loading = state.bottomLoading;
              if (state.accountList.isNotEmpty) {
                return RefreshIndicator(
                  onRefresh: () => refresh(),
                  child: Scrollbar(
                    controller: scrollController,
                    child: ListView.builder(
                      controller: scrollController,
                      itemBuilder: (context, index) {
                        return CompanyListComponent.companyListContainer(
                          context,
                          companyList,
                          index,
                          state,
                        );
                      },
                      itemCount:
                          loading ? companyList.length + 1 : companyList.length,
                    ),
                  ),
                );
              } else {
                return listViewNoRecordContainer(
                  context,
                  Icons.person_off_rounded,
                  'No Companies',
                );
              }
            },
          );
        },
      ),
    );
  }
}
