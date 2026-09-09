part of 'visitor_history_bloc.dart';

class VisitorHistoryState {
  final List<Query$Visitors$visitors$values?> visitorHistory;
  final VisitorFilter visitorFilter;
  final bool isInfiniteFetchLoading;
  final bool bottomLoading;
  final Object? error;

  VisitorHistoryState({
    this.visitorHistory = const <Query$Visitors$visitors$values?>[],
    required this.visitorFilter,
    this.isInfiniteFetchLoading = false,
    this.bottomLoading = false,
    this.error,
  });

  VisitorHistoryState copyWith({
    final List<Query$Visitors$visitors$values?>? visitorHistory,
    final VisitorFilter? visitorFilter,
    final bool? isInfiniteFetchLoading,
    final bool? bottomLoading,
    final Object? error,
  }) {
    return VisitorHistoryState(
      visitorHistory: visitorHistory ?? this.visitorHistory,
      visitorFilter: visitorFilter ?? this.visitorFilter,
      isInfiniteFetchLoading:
          isInfiniteFetchLoading ?? this.isInfiniteFetchLoading,
      bottomLoading: bottomLoading ?? this.bottomLoading,
      error: error ?? this.error,
    );
  }
}
