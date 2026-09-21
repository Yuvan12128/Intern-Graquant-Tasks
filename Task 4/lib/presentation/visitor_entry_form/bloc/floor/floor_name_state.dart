part of 'floor_name_bloc.dart';

class FloorNameState {
  final Map<int, AccountFloorDetail>? floorNameMap;
  FloorNameState({
    this.floorNameMap,
  });
}

class FloorNameInitial extends FloorNameState {}

class FloorNameLoading extends FloorNameState {
  final Map<int, AccountFloorDetail>? floorNameMap;
  FloorNameLoading({
    required this.floorNameMap,
  }) : super(
          floorNameMap: floorNameMap,
        );
}

class FloorNameLoaded extends FloorNameState {
  final List<SearchDelegateModel>? floors;
  final Map<int, AccountFloorDetail>? floorNameMap;
  FloorNameLoaded({
    this.floors,
    required this.floorNameMap,
  }) : super(
          floorNameMap: floorNameMap,
        );
}

class FloorNameError extends FloorNameState {
  final Object? error;
  final Map<int, AccountFloorDetail>? floorNameMap;
  FloorNameError({
    this.error,
    required this.floorNameMap,
  }) : super(
          floorNameMap: floorNameMap,
        );
}
