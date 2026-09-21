import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skcl_vms/app/constant/field_constant.dart';
import 'package:skcl_vms/app/utility/account_utility.dart';
import 'package:skcl_vms/data/graphql/services/account/gql/account.graphql.dart';
import 'package:skcl_vms/data/graphql/services/account/account_service.dart';
import 'package:skcl_vms/data/model/account/account_filter.dart';
import 'package:skcl_vms/data/model/search_delegate.dart';

part 'account_form_event.dart';
part 'account_form_state.dart';

class AccountFormBloc extends Bloc<AccountFormEvent, AccountFormState> {
  AccountFormBloc() : super(AccountFormState()) {
    on<GetAccountFormEvent>(_onGetAccountFormEvent);
  }

  Future<void> _onGetAccountFormEvent(
    GetAccountFormEvent event,
    Emitter<AccountFormState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          accountLoading: true,
        ),
      );
      String? buildingId =
          event.formGroup.control(FieldConstant.BUILDING_ID).value;
      AccountFilter accountFilter = new AccountFilter();
      accountFilter.setPlaceIdFilter =
          buildingId != null && buildingId.length > 0 ? buildingId : null;
      List<Query$Accounts$accounts$values?> gqlAccountsValues =
          await AccountService.getAccounts(accountFilter, 0, 100);
      final List<SearchDelegateModel> accountDelegates =
          await AccountUtility.getAccountSearchDelegates(gqlAccountsValues);
      emit(
        state.copyWith(
          accountDelegates: accountDelegates,
          accountLoading: false,
        ),
      );
    } catch (err) {
      emit(
        state.copyWith(
          error: err,
          accountLoading: false,
        ),
      );
    }
  }

  @override
  Future<void> close() {
    return super.close();
  }
}
