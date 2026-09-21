import 'package:bloc/bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skcl_vms/app/constant/field_constant.dart';
import 'package:skcl_vms/data/secure_storage/secure_storage.dart';
import 'package:skcl_vms/presentation/visitor_detail/model/visitor_detail.dart';
import 'package:skcl_vms/presentation/visitor_detail/service/gql/visitor.graphql.dart';
import 'package:skcl_vms/presentation/visitor_detail/service/visitor_detail_service.dart';
import 'package:skcl_vms/presentation/visitor_detail/widgets/visitor_detail_screen_component.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/service/visitor_service.dart';
import 'package:skcl_vms/presentation/visitor_history/bloc/visitor_history/visitor_history_bloc.dart';
import 'package:skcl_vms/presentation/visitor_history/service/gql/visitor.graphql.dart';

part 'visitor_detail_delete_update_event.dart';
part 'visitor_detail_delete_update_state.dart';

class VisitorUpdateDeleteBloc
    extends Bloc<VisitorDeleteUpdateEvent, VisitorDeleteUpdateState> {
  final VisitorHistoryBloc visitorHistoryBloc;
  VisitorUpdateDeleteBloc({required this.visitorHistoryBloc})
      : super(VisitorDeleteUpdateStateInitial()) {
    on<VisitorDeleteEvent>(_visitorDeleteEvent);
    on<VisitorCheckedInEvent>(_visitorCheckedInEvent);
    on<VisitorDeleteButtonShowEvent>(_visitorDeleteButtonShowEvent);
  }

  void _visitorDeleteEvent(
    VisitorDeleteEvent event,
    Emitter<VisitorDeleteUpdateState> emit,
  ) async {
    try {
      emit(VisitorDeleteLoading());
      final String? visitorId = event.visitorId;
      if (visitorId != null) {
        Mutation$DeleteVisitor$deleteVisitor$source? visitorResponse =
            await VisitorDetailService.deleteVisitor(visitorId);
        if (visitorResponse != null) {
          return Future.delayed(Duration(seconds: 2), () {
            visitorHistoryBloc.add(
              DeleteVisitorHistoryListEvent(
                visitorId: visitorId,
              ),
            );
            emit(VisitorDeletedSuccessfully());
          });
        } else {
          throw Exception('Visitor delete response is null');
        }
      } else {
        throw Exception('Visitor id is mandatory');
      }
    } catch (err) {
      emit(VisitorDeleteUpdateErrorState(err));
    }
  }

  void _visitorCheckedInEvent(
    VisitorCheckedInEvent event,
    Emitter<VisitorDeleteUpdateState> emit,
  ) async {
    try {
      emit(VisitorCheckedInLoading());
      final Query$Visitors$visitors$values? visitorDetail = event.visitorDetail;
      if (visitorDetail != null) {
        FormGroup formGroup =
            VisitorDetailScreenComponent.visitorFormBuilder(visitorDetail);
        final String? accountFloorId =
            formGroup.control(FieldConstant.ACCOUNT_FLOOR_ID).value;
        if (accountFloorId != null) {
          await VisitorService.updateVisitor(
            formGroup,
          );
          visitorHistoryBloc.add(
            VisitorHistoryListRefreshEvent(),
          );
          emit(VisitorCheckedInSuccessfully());
        } else {
          throw new Exception("Account floor id is empty");
        }
      } else {
        throw Exception('Visitor Detail is empty');
      }
    } catch (err) {
      emit(VisitorDeleteUpdateErrorState(err));
    }
  }

  void _visitorDeleteButtonShowEvent(
    VisitorDeleteButtonShowEvent event,
    Emitter<VisitorDeleteUpdateState> emit,
  ) async {
    try {
      String? loggedInPersonId =
          await SecureStorage().readSecureData(FieldConstant.PERSON_ID);
      String? visitorCreatedPersonId =
          event.visitorDetail?.visitoryHistory?.createdByPerson?.id;
      String? visitorId = event.visitorDetail?.visitoryHistory?.id;
      DateTime? createdDateTime =
          event.visitorDetail?.visitoryHistory?.createdDate;
      DateTime currentDateTime = new DateTime.now();
      int? differenceInDays;
      if (createdDateTime != null) {
        differenceInDays = currentDateTime.difference(createdDateTime).inDays;
      }
      if (visitorId != null &&
          loggedInPersonId != null &&
          visitorCreatedPersonId != null &&
          loggedInPersonId == visitorCreatedPersonId &&
          differenceInDays != null &&
          differenceInDays < 2) {
        emit(VisitorDeleteButtonShowState(true));
      } else {
        emit(VisitorDeleteButtonShowState(false));
      }
    } catch (err) {
      emit(VisitorDeleteUpdateErrorState(err));
    }
  }
}
