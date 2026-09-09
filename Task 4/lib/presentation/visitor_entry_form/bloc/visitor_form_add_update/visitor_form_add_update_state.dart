part of 'visitor_form_add_update_bloc.dart';

@immutable
abstract class VisitorFormAddUpdateState {}

class VisitorFormAddStateInitial extends VisitorFormAddUpdateState {}

class VisitorFormAddingState extends VisitorFormAddUpdateState {}

class VisitorFormAddedState extends VisitorFormAddUpdateState {}

class VisitorFormUpdatingState extends VisitorFormAddUpdateState {}

class VisitorFormUpdatedState extends VisitorFormAddUpdateState {}

class VisitorFormAddUpdateErrorState extends VisitorFormAddUpdateState {
  final Object error;
  VisitorFormAddUpdateErrorState(this.error);
}
