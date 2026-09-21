part of 'visitor_history_bloc.dart';

@immutable
abstract class VisitorHistoryEvent extends Equatable {
  const VisitorHistoryEvent();

  @override
  List<Object?> get props => [];
}

class VisitorHistoryListFetchedEvent extends VisitorHistoryEvent {
  VisitorHistoryListFetchedEvent();
}

class VisitorHistoryListRefreshEvent extends VisitorHistoryEvent {}

class HistoryFilterEvent extends VisitorHistoryEvent {
  final String? placeIdFilter;
  final String? accountIdFilter;
  final DateRangeFilter? visitingDateFilter;
  final MeetingType? meetingTypeFilter;
  final VisitorType? visitorTypeFilter;
  HistoryFilterEvent({
    this.placeIdFilter,
    this.accountIdFilter,
    this.visitingDateFilter,
    this.meetingTypeFilter,
    this.visitorTypeFilter,
  });
}

class ClearHistoryFilterEvent extends VisitorHistoryEvent {}

class DeleteVisitorHistoryListEvent extends VisitorHistoryEvent {
  final String visitorId;
  DeleteVisitorHistoryListEvent({
    required this.visitorId,
  });
}

class VisitorHistoryErrorEvent extends VisitorHistoryEvent {
  final Object? err;
  VisitorHistoryErrorEvent({this.err});
}
