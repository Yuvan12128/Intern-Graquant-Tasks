part of 'visitor_history_filter_bloc.dart';

class VisitorHistoryFilterEvent {}

class FilterEvent extends VisitorHistoryFilterEvent {
  final FormGroup? formGroup;
  final MeetingType? meetingType;
  final String? placeId;
  final String? placeName;

  FilterEvent({
    this.placeId,
    this.placeName,
    this.formGroup,
    this.meetingType,
  });
}

class ClearFilterEvent extends VisitorHistoryFilterEvent {}
