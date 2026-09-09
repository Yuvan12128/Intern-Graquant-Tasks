part of 'visitor_detail_delete_update_bloc.dart';

class VisitorDeleteUpdateEvent {}

class VisitorDeleteEvent extends VisitorDeleteUpdateEvent {
  final String? visitorId;
  VisitorDeleteEvent({
    this.visitorId,
  });
}

class VisitorCheckedInEvent extends VisitorDeleteUpdateEvent {
  final Query$Visitors$visitors$values? visitorDetail;
  VisitorCheckedInEvent({
    this.visitorDetail,
  });
}

class VisitorDeleteButtonShowEvent extends VisitorDeleteUpdateEvent {
  final VisitorDetail? visitorDetail;
  VisitorDeleteButtonShowEvent({required this.visitorDetail});
}
