import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:skcl_vms/app/constant/app_constant.dart';
import 'package:skcl_vms/app/constant/enum/meeting_type.dart';
import 'package:skcl_vms/app/constant/enum/visitor_type.dart';
import 'package:skcl_vms/data/model/common/date_range_filter.dart';
import 'package:skcl_vms/data/model/visitor/visitor_filter.dart';
import 'package:skcl_vms/logic/bloc/user_authorization/user_authorization_bloc.dart';
import 'package:skcl_vms/presentation/visitor_history/service/gql/visitor.graphql.dart';
import 'package:skcl_vms/presentation/visitor_history/service/visitor_history_service.dart';
import 'package:skcl_vms/presentation/visitor_history/utility/visitor_history_utility.dart';

part 'visitor_history_event.dart';
part 'visitor_history_state.dart';

const int _pageSize = 10;

class VisitorHistoryBloc
    extends Bloc<VisitorHistoryEvent, VisitorHistoryState> {
  final UserAuthorizationBloc userAuthorizationBloc;
  VisitorHistoryBloc({required this.userAuthorizationBloc})
      : super(VisitorHistoryState(visitorFilter: new VisitorFilter())) {
    on<VisitorHistoryListFetchedEvent>(_onVisitorListFetched);
    on<VisitorHistoryListRefreshEvent>(_onVisitorListRefresh);
    on<HistoryFilterEvent>(_historyFilterEvent);
    on<ClearHistoryFilterEvent>(_clearHistoryFilterEvent);
    on<VisitorHistoryErrorEvent>(_historyErrorEvent);
    on<DeleteVisitorHistoryListEvent>(_deleteVisitorHistoryListEvent);
  }

  void _onVisitorListFetched(
    VisitorHistoryListFetchedEvent event,
    Emitter<VisitorHistoryState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          bottomLoading: true,
          error: null,
        ),
      );

      if (state.visitorHistory.isEmpty) {
        isEmptyVisitorHistory(emit);
      } else {
        VisitorFilter visitorFilter = visitorHistoryFilterBuilder(
          state.visitorFilter,
          userAuthorizationBloc,
        );
        final List<Query$Visitors$visitors$values?> newItems =
            await VisitorHistoryService.getVisitors(
          visitorFilter,
          state.visitorHistory.length,
          _pageSize,
        );
        emit(
          newItems.isEmpty
              ? state.copyWith(bottomLoading: false, error: null)
              : state.copyWith(
                  visitorHistory: List.of(state.visitorHistory)
                    ..addAll(newItems),
                  isInfiniteFetchLoading: false,
                  bottomLoading: false,
                  error: null,
                ),
        );
      }
    } catch (err) {
      emit(
        state.copyWith(
          error: err,
          bottomLoading: false,
          isInfiniteFetchLoading: false,
        ),
      );
    }
  }

  void _onVisitorListRefresh(
    VisitorHistoryListRefreshEvent event,
    Emitter<VisitorHistoryState> emit,
  ) async {
    try {
      emit(state.copyWith(
        isInfiniteFetchLoading: true,
        error: null,
      ));

      VisitorFilter visitorFilter = visitorHistoryFilterBuilder(
        state.visitorFilter,
        userAuthorizationBloc,
      );
      final List<Query$Visitors$visitors$values?> newItems =
          await VisitorHistoryService.getVisitors(
        visitorFilter,
        0,
        _pageSize,
      );
      emit(
        state.copyWith(
          visitorHistory: newItems,
          isInfiniteFetchLoading: false,
          bottomLoading: false,
          error: null,
        ),
      );
    } catch (err) {
      emit(state.copyWith(
        error: err,
        bottomLoading: false,
        isInfiniteFetchLoading: false,
      ));
    }
  }

  _historyFilterEvent(
    HistoryFilterEvent event,
    Emitter<VisitorHistoryState> emit,
  ) async {
    try {
      VisitorFilter visitorFilter = visitorHistoryFilterBuilder(
        state.visitorFilter,
        userAuthorizationBloc,
      );
      VisitorHistoryUtility.filterBuilder(
        visitorFilter,
        event,
      );
      add(VisitorHistoryListRefreshEvent());
    } catch (err) {
      emit(state.copyWith(
        error: err,
      ));
    }
  }

  _clearHistoryFilterEvent(
    ClearHistoryFilterEvent event,
    Emitter<VisitorHistoryState> emit,
  ) {
    try {
      VisitorHistoryUtility.clearBuilder(
        state.visitorFilter,
        event,
      );
      add(VisitorHistoryListRefreshEvent());
    } catch (err) {
      emit(state.copyWith(
        error: err,
      ));
    }
  }

  Future<void> isEmptyVisitorHistory(
    Emitter<VisitorHistoryState> emit,
  ) async {
    emit(state.copyWith(
      isInfiniteFetchLoading: true,
      error: null,
    ));
    VisitorFilter visitorFilter = visitorHistoryFilterBuilder(
      state.visitorFilter,
      userAuthorizationBloc,
    );
    final List<Query$Visitors$visitors$values?> newItems =
        await VisitorHistoryService.getVisitors(
      visitorFilter,
      0,
      _pageSize,
    );
    emit(state.copyWith(
      visitorHistory: newItems,
      isInfiniteFetchLoading: false,
      bottomLoading: false,
      error: null,
    ));
  }

  Future<void> _historyErrorEvent(
    VisitorHistoryErrorEvent event,
    Emitter<VisitorHistoryState> emit,
  ) async {
    emit(state.copyWith(
      error: event.err,
    ));
  }

  VisitorFilter visitorHistoryFilterBuilder(
    VisitorFilter visitorFilterState,
    UserAuthorizationBloc userAuthorizationBloc,
  ) {
    try {
      VisitorFilter visitorFilter = visitorFilterState;
      if (userAuthorizationBloc.state.roleType == AppConstant.RECEPTIONIST &&
          userAuthorizationBloc.state.accountId != null) {
        visitorFilter.accountIdFilter = userAuthorizationBloc.state.accountId;
      }
      return visitorFilterState;
    } catch (err) {
      throw err;
    }
  }

  void _deleteVisitorHistoryListEvent(
    DeleteVisitorHistoryListEvent event,
    Emitter<VisitorHistoryState> emit,
  ) {
    try {
      final List<Query$Visitors$visitors$values?>? visitorHistoryList =
          state.visitorHistory;
      if (visitorHistoryList != null) {
        visitorHistoryList.removeWhere(
            (Query$Visitors$visitors$values? element) =>
                element?.id == event.visitorId);
        return emit(
          state.copyWith(
            visitorHistory: visitorHistoryList,
            isInfiniteFetchLoading: false,
            bottomLoading: false,
            error: null,
          ),
        );
      }
    } catch (err) {
      emit(state.copyWith(
        error: err,
        visitorHistory: state.visitorHistory,
      ));
    }
  }
}
