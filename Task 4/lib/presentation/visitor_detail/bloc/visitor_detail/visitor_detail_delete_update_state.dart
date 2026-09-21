part of 'visitor_detail_delete_update_bloc.dart';

class VisitorDeleteUpdateState {}

class VisitorDeleteUpdateStateInitial extends VisitorDeleteUpdateState {}

class VisitorDeleteLoading extends VisitorDeleteUpdateState {}

class VisitorDeletedSuccessfully extends VisitorDeleteUpdateState {}

class VisitorCheckedInLoading extends VisitorDeleteUpdateState {}

class VisitorCheckedInSuccessfully extends VisitorDeleteUpdateState {}

class VisitorDeleteButtonShowState extends VisitorDeleteUpdateState {
  final bool canShow;
  VisitorDeleteButtonShowState(this.canShow);
}

class VisitorDeleteUpdateErrorState extends VisitorDeleteUpdateState {
  final Object error;
  VisitorDeleteUpdateErrorState(this.error);
}
