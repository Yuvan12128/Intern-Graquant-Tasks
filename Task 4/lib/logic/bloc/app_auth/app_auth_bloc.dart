import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:skcl_vms/app/constant/app_constant.dart';
import 'package:skcl_vms/app/constant/enum/auth_status.dart';
import 'package:skcl_vms/data/graphql/services/person/gql/person.graphql.dart';
import 'package:skcl_vms/data/graphql/services/person/person_service.dart';
import 'package:skcl_vms/data/secure_storage/secure_storage.dart';
import 'package:skcl_vms/logic/bloc/user_authorization/user_authorization_bloc.dart';

part 'app_auth_event.dart';
part 'app_auth_state.dart';

class AppAuthBloc extends Bloc<AppAuthEvent, AppAuthState> {
  final UserAuthorizationBloc userAuthorizationBloc;
  AppAuthBloc({required this.userAuthorizationBloc}) : super(AppAuthState()) {
    on<OnAppOpen>(_onAppOpen);
    on<OnAppUserLoggedOut>(_onAppUserLoggedOut);
  }

  void _onAppOpen(
    OnAppOpen event,
    Emitter<AppAuthState> emit,
  ) async {
    try {
      emit(
        AppAuthState(status: AuthStatus.LOADING),
      );
      final Query$Me$me meInfo = await PersonService.me();
      final String roleType =
          meInfo.person?.roleType ?? AppConstant.ADMINISTRATOR;
      final String accountId = meInfo.account?.id ?? 'account-skcl-1';
      userAuthorizationBloc.add(
        OnUserLogin(
          roleType: roleType,
          accountId: accountId,
        ),
      );
      emit(
        AppAuthState(status: AuthStatus.SIGNEDIN),
      );
    } catch (err) {
      emit(
        AppAuthState(status: AuthStatus.NOTSIGNEDIN),
      );
    }
  }

  void _onAppUserLoggedOut(
    OnAppUserLoggedOut event,
    Emitter<AppAuthState> emit,
  ) async {
    try {
      await SecureStorage().deleteAll();
      emit(
        AppAuthState(status: AuthStatus.LOGOUT),
      );
    } catch (err) {
      await SecureStorage().deleteAll();
      emit(
        AppAuthStateError(
          error: err,
          status: AuthStatus.NOTDETERMINED,
        ),
      );
    }
  }
}
