part of 'visitor_form_bloc.dart';

@immutable
abstract class VisitorFormEvent {}

class VisitorFormEntryShowBlockTextFieldEvent extends VisitorFormEvent {
  final bool showBlockTextField;
  VisitorFormEntryShowBlockTextFieldEvent({
    required this.showBlockTextField,
  });
}

class VisitorFormEntryShowFloorTextFieldEvent extends VisitorFormEvent {
  final bool showFloorTextField;
  VisitorFormEntryShowFloorTextFieldEvent({
    required this.showFloorTextField,
  });
}

class VisitorFormEntryShowBuildingTextFieldEvent extends VisitorFormEvent {
  VisitorFormEntryShowBuildingTextFieldEvent();
}
