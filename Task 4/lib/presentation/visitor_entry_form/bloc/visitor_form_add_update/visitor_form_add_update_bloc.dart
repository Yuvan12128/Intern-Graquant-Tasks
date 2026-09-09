import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skcl_vms/app/constant/field_constant.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/service/visitor_service.dart';
import 'package:skcl_vms/presentation/visitor_history/bloc/visitor_history/visitor_history_bloc.dart';

part 'visitor_form_add_update_event.dart';
part 'visitor_form_add_update_state.dart';

class VisitorFormAddUpdateBloc
    extends Bloc<VisitorFormAddUpdateEvent, VisitorFormAddUpdateState> {
  final VisitorHistoryBloc visitorHistoryBloc;
  VisitorFormAddUpdateBloc({required this.visitorHistoryBloc})
      : super(VisitorFormAddStateInitial()) {
    on<VisitorAddEvent>(_onVisitorAddEvent);
    on<VisitorUpdateEvent>(_onVisitorUpdateEvent);
  }

  Future<void> _onVisitorAddEvent(
    VisitorAddEvent event,
    Emitter<VisitorFormAddUpdateState> emit,
  ) async {
    try {
      emit(VisitorFormAddingState());
      final String? accountFloorId =
          event.formGroup.control(FieldConstant.ACCOUNT_FLOOR_ID).value;
      if (accountFloorId != null) {
        await VisitorService.createVisitor(
          event.formGroup,
        );
        emit(VisitorFormAddedState());
      } else {
        throw new Exception("Account floor id is empty");
      }
    } catch (err) {
      emit(VisitorFormAddUpdateErrorState(err));
    }
  }

  Future<void> _onVisitorUpdateEvent(
    VisitorUpdateEvent event,
    Emitter<VisitorFormAddUpdateState> emit,
  ) async {
    try {
      emit(VisitorFormUpdatingState());
      final String? accountFloorId =
          event.formGroup.control(FieldConstant.ACCOUNT_FLOOR_ID).value;
      if (accountFloorId != null) {
        await VisitorService.updateVisitor(
          event.formGroup,
        );
        visitorHistoryBloc.add(
          VisitorHistoryListRefreshEvent(),
        );
        emit(VisitorFormUpdatedState());
      } else {
        throw new Exception("Account floor id is empty");
      }
    } catch (err) {
      emit(VisitorFormAddUpdateErrorState(err));
    }
  }

  @override
  Future<void> close() {
    return super.close();
  }
}
