part of 'visitor_form_add_update_bloc.dart';

@immutable
abstract class VisitorFormAddUpdateEvent {}

class VisitorAddEvent extends VisitorFormAddUpdateEvent {
  final FormGroup formGroup;
  VisitorAddEvent({
    required this.formGroup,
  });
}

class VisitorUpdateEvent extends VisitorFormAddUpdateEvent {
  final FormGroup formGroup;
  VisitorUpdateEvent({
    required this.formGroup,
  });
}
