part of 'floor_name_bloc.dart';

@immutable
abstract class FloorNameEvent {}

class FloorNameRequestedEvent extends FloorNameEvent {
  FloorNameRequestedEvent();
}

class FloorNameMapUpdateEvent extends FloorNameEvent {
  final Map<int, AccountFloorDetail>? floorNameMap;
  FloorNameMapUpdateEvent({
    required this.floorNameMap,
  });
}
