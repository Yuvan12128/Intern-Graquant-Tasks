import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:skcl_vms/app/constant/app_constant.dart';
import 'package:skcl_vms/app/utility/place_utility.dart';
import 'package:skcl_vms/data/graphql/services/account/account_service.dart';
import 'package:skcl_vms/data/graphql/services/account/gql/account.graphql.dart';
import 'package:skcl_vms/data/graphql/services/place/gql/place.graphql.dart';
import 'package:skcl_vms/data/graphql/services/place/place_service.dart';
import 'package:skcl_vms/data/model/account/account_filter.dart';
import 'package:skcl_vms/data/model/search_delegate.dart';

import '../../../data/model/common/common_field_filter.dart';

part 'place_form_event.dart';
part 'place_form_state.dart';

class PlaceFormBloc extends Bloc<PlaceFormEvent, PlaceFormState> {
  PlaceFormBloc() : super(PlaceFormState()) {
    on<GetPlaceFormEvent>(_onGetPlaceFormEvent);
  }

  Future<void> _onGetPlaceFormEvent(
    GetPlaceFormEvent event,
    Emitter<PlaceFormState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          placeLoading: true,
        ),
      );
      if (event.roleType != AppConstant.RECEPTIONIST) {
        List<Query$Places$places$values?> gqlPlacesValues =
            await PlaceService.getPlaces(null, 0, 100);
        final List<SearchDelegateModel> placeDelegates =
            await PlaceUtility.getPlaceSearchDelegates(gqlPlacesValues);
        emit(
          state.copyWith(
            placeDelegates: placeDelegates,
            placeLoading: false,
          ),
        );
      } else if (event.accountId != null) {
        AccountFilter accountFilter = new AccountFilter();
        accountFilter.commonFieldFilter = new CommonFieldFilter();
        accountFilter.commonFieldFilter?.setIds =
            event.accountId != null ? [event.accountId!] : null;
        List<Query$Accounts$accounts$values?> gqlAccountsValues =
            await AccountService.getAccounts(accountFilter, 0, 100);
        final List<SearchDelegateModel> placeDelegates =
            await PlaceUtility.getPlaceSearchDelegatesFromAccounts(
          gqlAccountsValues,
        );
        emit(
          state.copyWith(
            placeDelegates: placeDelegates,
            placeLoading: false,
          ),
        );
      } else {
        throw new Exception('User is not authorized for this operation');
      }
    } catch (err) {
      emit(
        state.copyWith(
          error: err,
          placeLoading: false,
        ),
      );
    }
  }

  @override
  Future<void> close() {
    return super.close();
  }
}
