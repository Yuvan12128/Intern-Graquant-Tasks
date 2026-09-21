part of 'visitor_history_filter_bloc.dart';

class VisitorHistoryFilterState {
  final FormGroup? formGroup;
  final String? startDate;
  final String? endDate;
  final MeetingType? meetingTypeFilter;
  final String? placeIdFilter;
  final String? placeNameFilter;
  final String? accountIdFilter;
  final String? accountNameFilter;
  final VisitorType? visitorTypeFilter;
  final Object? error;
  VisitorHistoryFilterState({
    this.formGroup,
    this.startDate,
    this.endDate,
    this.meetingTypeFilter,
    this.placeIdFilter,
    this.placeNameFilter,
    this.accountIdFilter,
    this.accountNameFilter,
    this.visitorTypeFilter,
    this.error,
  });

  VisitorHistoryFilterState copyWith({
    final FormGroup? formGroup,
    final String? startDate,
    final String? endDate,
    final MeetingType? meetingTypeFilter,
    final String? placeIdFilter,
    final String? placeNameFilter,
    final String? accountIdFilter,
    final String? accountNameFilter,
    final VisitorType? visitorTypeFilter,
    final Object? error,
  }) {
    return VisitorHistoryFilterState(
      formGroup: formGroup ?? this.formGroup,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      meetingTypeFilter: meetingTypeFilter ?? this.meetingTypeFilter,
      placeIdFilter: placeIdFilter ?? this.placeIdFilter,
      placeNameFilter: placeNameFilter ?? this.placeNameFilter,
      accountIdFilter: accountIdFilter ?? this.accountIdFilter,
      accountNameFilter: accountNameFilter ?? this.accountNameFilter,
      visitorTypeFilter: visitorTypeFilter ?? this.visitorTypeFilter,
      error: error ?? null,
    );
  }
}
