import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skcl_vms/app/component/custom_progess_indicator.dart';
import 'package:skcl_vms/app/constant/component_constant.dart';
import 'package:skcl_vms/app/log/util/log.dart';
import 'package:skcl_vms/presentation/visitor_history/bloc/visitor_history/visitor_history_bloc.dart';
import 'package:skcl_vms/presentation/visitor_history/bloc/visitor_initial_filter/visitor_initial_filter_bloc.dart';
import 'package:skcl_vms/presentation/visitor_history/service/gql/visitor.graphql.dart';
import 'package:skcl_vms/presentation/visitor_history/widgets/visitor_component.dart';

const String fileName =
    'visitory_history.widgets.visitor_history_screen_body.dart';

class VisitorHistoryScreenBody extends StatefulWidget {
  final bool doPlannedVisitorRequired;
  VisitorHistoryScreenBody({Key? key, required this.doPlannedVisitorRequired})
      : super(key: key);
  @override
  _VisitorHistoryScreenBody createState() => _VisitorHistoryScreenBody();
}

class _VisitorHistoryScreenBody extends State<VisitorHistoryScreenBody> {
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    scrollController.addListener(_onScroll);
    context.read<VisitorInitialFilterBloc>().add(
          VisitorInitialFilterResetEvent(
            doPlannedFilterRequired: widget.doPlannedVisitorRequired,
          ),
        );
    // if (widget.doClearFilter) {
    //   context.read<VisitorHistoryFilterBloc>().add(ClearFilterEvent());
    // } else {
    //   context.read<VisitorHistoryBloc>().add(VisitorHistoryListRefreshEvent());
    // }
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
      context.read<VisitorHistoryBloc>().add(VisitorHistoryListFetchedEvent());
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
      '_fetchVisitorHistory',
      error,
      'Fetching Visitor History',
      null,
      true,
      null,
      null,
    );
  }

  Future<void> refresh() async {
    context.read<VisitorHistoryBloc>().add(VisitorHistoryListRefreshEvent());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<VisitorInitialFilterBloc, VisitorInitialFilterState>(
        listener: (context, state) {
          if (state is VisitorInitialFilterResetErrorState) {
            Log.error(
              context,
              fileName,
              'Error on Reseting Visitor History Filter',
              state.error,
              'Error on Reseting Visitor History Filter',
              null,
              true,
              null,
              null,
            );
          }
        },
        builder: (context, state) {
          if (state is VisitorInitialFilterResetLoadingState) {
            return CustomProgressIndicator.customCircularProgressIndicator(
                context);
          }

          if (state is VisitorInitialFilterResetErrorState) {
            return Container();
          }
          return BlocConsumer<VisitorHistoryBloc, VisitorHistoryState>(
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
              List<Query$Visitors$visitors$values?> visitorHistoryList = [];
              bool loading = false;
              visitorHistoryList = state.visitorHistory;
              loading = state.bottomLoading;
              if (state.visitorHistory.isNotEmpty) {
                return RefreshIndicator(
                  onRefresh: () => refresh(),
                  child: Scrollbar(
                    controller: scrollController,
                    child: ListView.builder(
                      controller: scrollController,
                      itemBuilder: (context, index) {
                        return VisitorHistoryComponent
                            .visitorHistoryComponentContainer(
                          context,
                          visitorHistoryList,
                          index,
                          state,
                        );
                      },
                      itemCount: loading
                          ? visitorHistoryList.length + 1
                          : visitorHistoryList.length,
                    ),
                  ),
                );
              } else {
                return listViewNoRecordContainer(
                  context,
                  Icons.person_off_rounded,
                  'No Visitors',
                );
              }
            },
          );
        },
      ),
    );
  }
}
