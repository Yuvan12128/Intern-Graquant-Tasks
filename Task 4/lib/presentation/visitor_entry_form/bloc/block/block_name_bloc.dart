import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:skcl_vms/data/model/search_delegate.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/model/account_floor_detail.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/utility/block_utility.dart';

part 'block_name_event.dart';
part 'block_name_state.dart';

class BlockNameBloc extends Bloc<BlockNameEvent, BlockNameState> {
  BlockNameBloc() : super(BlockNameInitial()) {
    on<BlockNameRequestedEvent>(_onBlockNameRequested);
    on<BlockNameMapUpdateEvent>(_onBlockNameMapUpdate);
  }

  Future<void> _onBlockNameRequested(
    BlockNameRequestedEvent event,
    Emitter<BlockNameState> emit,
  ) async {
    try {
      final List<SearchDelegateModel> blocks =
          await BlockUtility.getBlockSearchDelegates(
        state.blockNameMap?.keys,
      );
      emit(
        BlockNameLoaded(
          blocks: blocks,
          blockNameMap: state.blockNameMap,
        ),
      );
    } catch (err) {
      emit(BlockNameError(error: err, blockNameMap: state.blockNameMap));
    }
  }

  Future<void> _onBlockNameMapUpdate(
    BlockNameMapUpdateEvent event,
    Emitter<BlockNameState> emit,
  ) async {
    try {
      emit(BlockNameState(blockNameMap: event.blockNameMap));
    } catch (err) {
      emit(BlockNameError(error: err, blockNameMap: state.blockNameMap));
    }
  }

  @override
  Future<void> close() {
    return super.close();
  }
}
