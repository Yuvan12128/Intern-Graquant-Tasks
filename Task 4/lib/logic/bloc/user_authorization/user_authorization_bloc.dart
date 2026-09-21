import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'user_authorization_event.dart';
part 'user_authorization_state.dart';

class UserAuthorizationBloc
    extends Bloc<UserAuthorizationEvent, UserAuthorizationState> {
  UserAuthorizationBloc() : super(UserAuthorizationState()) {
    on<OnUserLogin>(_onUserLogin);
  }

  void _onUserLogin(
    OnUserLogin event,
    Emitter<UserAuthorizationState> emit,
  ) async {
    try {
      emit(
        UserAuthorizationState(
          roleType: event.roleType,
          accountId: event.accountId,
        ),
      );
    } catch (err) {
      emit(
        UserAuthorizationStateError(
          error: err,
        ),
      );
    }
  }
}
