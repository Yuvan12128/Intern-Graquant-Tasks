part of 'visitor_initial_filter_bloc.dart';

@immutable
abstract class VisitorInitialFilterEvent extends Equatable {
  const VisitorInitialFilterEvent();

  @override
  List<Object?> get props => [];
}

class VisitorInitialFilterResetEvent extends VisitorInitialFilterEvent {
  final bool doPlannedFilterRequired;
  VisitorInitialFilterResetEvent({
    required this.doPlannedFilterRequired,
  });
}
