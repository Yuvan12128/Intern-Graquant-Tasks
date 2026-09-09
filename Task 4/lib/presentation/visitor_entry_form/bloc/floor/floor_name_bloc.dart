import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:skcl_vms/data/model/search_delegate.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/model/account_floor_detail.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/utility/floor_utility.dart';

part 'floor_name_event.dart';
part 'floor_name_state.dart';

class FloorNameBloc extends Bloc<FloorNameEvent, FloorNameState> {
  FloorNameBloc() : super(FloorNameInitial()) {
    on<FloorNameRequestedEvent>(_onFloorNameRequested);
    on<FloorNameMapUpdateEvent>(_onFloorNameMapUpdate);
  }

  Future<void> _onFloorNameRequested(
    FloorNameRequestedEvent event,
    Emitter<FloorNameState> emit,
  ) async {
    try {
      final List<SearchDelegateModel> floors =
          await FloorUtility.getFloorSearchDelegates(
        state.floorNameMap?.keys,
      );
      emit(
        FloorNameLoaded(
          floors: floors,
          floorNameMap: state.floorNameMap,
        ),
      );
    } catch (err) {
      emit(
        FloorNameError(
          error: err,
          floorNameMap: state.floorNameMap,
        ),
      );
    }
  }

  Future<void> _onFloorNameMapUpdate(
    FloorNameMapUpdateEvent event,
    Emitter<FloorNameState> emit,
  ) async {
    try {
      emit(
        FloorNameState(
          floorNameMap: event.floorNameMap,
        ),
      );
    } catch (err) {
      emit(
        FloorNameError(
          error: err,
          floorNameMap: state.floorNameMap,
        ),
      );
    }
  }

  @override
  Future<void> close() {
    return super.close();
  }
}
