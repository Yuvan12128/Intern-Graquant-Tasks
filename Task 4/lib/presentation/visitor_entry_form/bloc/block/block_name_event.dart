part of 'block_name_bloc.dart';

@immutable
abstract class BlockNameEvent {}

class BlockNameRequestedEvent extends BlockNameEvent {
  BlockNameRequestedEvent();
}

class BlockNameMapUpdateEvent extends BlockNameEvent {
  final Map<String, Map<int, AccountFloorDetail>>? blockNameMap;
  BlockNameMapUpdateEvent({
    required this.blockNameMap,
  });
}
