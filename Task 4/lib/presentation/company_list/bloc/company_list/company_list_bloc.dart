import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:skcl_vms/app/constant/app_constant.dart';
import 'package:skcl_vms/data/graphql/services/account/account_service.dart';
import 'package:skcl_vms/data/graphql/services/account/gql/account.graphql.dart';
import 'package:skcl_vms/data/model/account/account_filter.dart';
import 'package:skcl_vms/data/model/common/common_field_filter.dart';
import 'package:skcl_vms/logic/bloc/user_authorization/user_authorization_bloc.dart';
import 'package:skcl_vms/presentation/company_list/utility/company_list_utility.dart';

part 'company_list_event.dart';
part 'company_list_state.dart';

const int _pageSize = 10;

class CompanyListBloc extends Bloc<CompanyListEvent, CompanyListState> {
  final UserAuthorizationBloc userAuthorizationBloc;
  CompanyListBloc({required this.userAuthorizationBloc})
      : super(CompanyListState(accountFilter: new AccountFilter())) {
    on<CompanyListFetchedEvent>(_onCompanyListFetched);
    on<CompanyListRefreshEvent>(_onCompanyListRefresh);
    on<CompanyFilterEvent>(_companyFilterEvent);
    on<ClearCompanyFilterEvent>(_clearHistoryFilterEvent);
    on<CompanyListErrorEvent>(_companyErrorEvent);
  }

  void _onCompanyListFetched(
    CompanyListFetchedEvent event,
    Emitter<CompanyListState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          bottomLoading: true,
          error: null,
        ),
      );

      if (state.accountList.isEmpty) {
        isEmptyCompanyList(emit);
      } else {
        AccountFilter accountFilter = visitorHistoryFilterBuilder(
          state.accountFilter,
          userAuthorizationBloc,
        );
        final List<Query$Accounts$accounts$values?> newItems =
            await AccountService.getAccounts(
          accountFilter,
          state.accountList.length,
          _pageSize,
        );
        List<Query$Accounts$accounts$values?>? gqlAccountList =
            List.of(state.accountList)..addAll(newItems);
        emit(
          newItems.isEmpty
              ? state.copyWith(bottomLoading: false, error: null)
              : state.copyWith(
                  accountList: gqlAccountList,
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

  void _onCompanyListRefresh(
    CompanyListRefreshEvent event,
    Emitter<CompanyListState> emit,
  ) async {
    try {
      emit(state.copyWith(
        isInfiniteFetchLoading: true,
        error: null,
      ));
      AccountFilter accountFilter = visitorHistoryFilterBuilder(
        state.accountFilter,
        userAuthorizationBloc,
      );
      final List<Query$Accounts$accounts$values?> newItems =
          await AccountService.getAccounts(
        accountFilter,
        0,
        _pageSize,
      );
      emit(
        state.copyWith(
          accountList: newItems.toSet().toList(),
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

  _companyFilterEvent(
    CompanyFilterEvent event,
    Emitter<CompanyListState> emit,
  ) async {
    try {
      AccountFilter accountFilter = visitorHistoryFilterBuilder(
        state.accountFilter,
        userAuthorizationBloc,
      );
      CompanyListUtility.filterBuilder(
        accountFilter,
        event,
      );
      add(CompanyListRefreshEvent());
    } catch (err) {
      emit(state.copyWith(
        error: err,
      ));
    }
  }

  _clearHistoryFilterEvent(
    ClearCompanyFilterEvent event,
    Emitter<CompanyListState> emit,
  ) {
    try {
      CompanyListUtility.clearBuilder(
        state.accountFilter,
        event,
      );
      add(CompanyListRefreshEvent());
    } catch (err) {
      emit(state.copyWith(
        error: err,
      ));
    }
  }

  Future<void> isEmptyCompanyList(
    Emitter<CompanyListState> emit,
  ) async {
    emit(state.copyWith(
      isInfiniteFetchLoading: true,
      error: null,
    ));

    AccountFilter accountFilter = visitorHistoryFilterBuilder(
      state.accountFilter,
      userAuthorizationBloc,
    );
    final List<Query$Accounts$accounts$values?> newItems =
        await AccountService.getAccounts(
      accountFilter,
      0,
      _pageSize,
    );
    emit(state.copyWith(
      accountList: newItems.toSet().toList(),
      isInfiniteFetchLoading: false,
      bottomLoading: false,
      error: null,
    ));
  }

  Future<void> _companyErrorEvent(
    CompanyListErrorEvent event,
    Emitter<CompanyListState> emit,
  ) async {
    emit(state.copyWith(
      error: event.err,
    ));
  }

  AccountFilter visitorHistoryFilterBuilder(
    AccountFilter accountFilterState,
    UserAuthorizationBloc userAuthorizationBloc,
  ) {
    try {
      AccountFilter accountFilter = accountFilterState;
      if (userAuthorizationBloc.state.roleType == AppConstant.RECEPTIONIST &&
          userAuthorizationBloc.state.accountId != null) {
        accountFilter.commonFieldFilter = new CommonFieldFilter();
        accountFilter.commonFieldFilter?.setIds = [
          userAuthorizationBloc.state.accountId ?? ''
        ];
      } else {
        accountFilter.commonFieldFilter?.setIds = null;
      }
      return accountFilter;
    } catch (err) {
      throw err;
    }
  }
}
