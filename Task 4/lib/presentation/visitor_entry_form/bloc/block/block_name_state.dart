part of 'block_name_bloc.dart';

class BlockNameState {
  final Map<String, Map<int, AccountFloorDetail>>? blockNameMap;
  BlockNameState({
    this.blockNameMap,
  });
}

class BlockNameInitial extends BlockNameState {}

class BlockNameLoading extends BlockNameState {
  final Map<String, Map<int, AccountFloorDetail>>? blockNameMap;
  BlockNameLoading({
    required this.blockNameMap,
  }) : super(
          blockNameMap: blockNameMap,
        );
}

class BlockNameLoaded extends BlockNameState {
  final List<SearchDelegateModel>? blocks;
  final Map<String, Map<int, AccountFloorDetail>>? blockNameMap;
  BlockNameLoaded({
    this.blocks,
    required this.blockNameMap,
  }) : super(
          blockNameMap: blockNameMap,
        );
}

class BlockNameError extends BlockNameState {
  final Object? error;
  final Map<String, Map<int, AccountFloorDetail>>? blockNameMap;
  BlockNameError({
    this.error,
    required this.blockNameMap,
  }) : super(
          blockNameMap: blockNameMap,
        );
}
