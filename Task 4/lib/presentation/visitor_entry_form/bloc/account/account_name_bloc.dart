import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:skcl_vms/data/graphql/services/account/account_service.dart';
import 'package:skcl_vms/data/graphql/services/account/gql/account.graphql.dart';
import 'package:skcl_vms/data/model/account/account_filter.dart';
import 'package:skcl_vms/data/model/common/common_field_filter.dart';
import 'package:skcl_vms/data/model/search_delegate.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/model/account_floor_detail.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/utility/account_utility.dart';

part 'account_name_event.dart';
part 'account_name_state.dart';

class AccountNameBloc extends Bloc<AccountNameEvent, AccountNameState> {
  AccountNameBloc() : super(AccountNameInitial()) {
    on<AccountNameRequestedEvent>(_onAccountNameRequested);
  }

  Future<void> _onAccountNameRequested(
    AccountNameRequestedEvent event,
    Emitter<AccountNameState> emit,
  ) async {
    try {
      AccountFilter accountFilter = new AccountFilter();
      String? buildingId = event.buildingId;
      accountFilter.setPlaceIdFilter =
          buildingId != null && buildingId.length > 0 ? buildingId : null;
      accountFilter.commonFieldFilter = new CommonFieldFilter();
      accountFilter.commonFieldFilter?.setIds =
          event.accountId != null ? [event.accountId!] : null;
      List<Query$Accounts$accounts$values?> gqlAccountsValues =
          await AccountService.getAccounts(accountFilter, 0, 100);
      Map<String, Map<String, Map<int, AccountFloorDetail>>> accountNameMap =
          AccountUtility.getAccountNameMap(
        gqlAccountsValues,
        event.buildingName,
      );
      final List<SearchDelegateModel> accounts =
          await AccountUtility.getAccountSearchDelegates(
        accountNameMap.keys,
      );
      emit(
        AccountNameLoaded(
          accounts: accounts,
          accountNameMap: accountNameMap,
        ),
      );
    } catch (err) {
      emit(AccountNameError(err));
    }
  }

  @override
  Future<void> close() {
    return super.close();
  }
}
