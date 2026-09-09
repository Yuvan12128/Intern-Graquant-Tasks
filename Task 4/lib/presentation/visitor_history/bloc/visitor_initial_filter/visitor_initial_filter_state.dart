part of 'visitor_initial_filter_bloc.dart';

class VisitorInitialFilterState {}

class VisitorInitialFilterResetState extends VisitorInitialFilterState {}

class VisitorInitialFilterResetLoadingState extends VisitorInitialFilterState {}

class VisitorInitialFilterResetErrorState extends VisitorInitialFilterState {
  final Object? error;
  VisitorInitialFilterResetErrorState({
    required this.error,
  });
}
