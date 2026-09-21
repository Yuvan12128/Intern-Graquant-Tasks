part of 'visitor_form_bloc.dart';

class VisitorFormState {
  final bool showBuildingTextField;
  final bool showBlockTextField;
  final bool showFloorTextField;
  final String? buildingName;
  final String? buildingId;
  final Object? error;

  VisitorFormState({
    this.showBuildingTextField = false,
    this.showBlockTextField = false,
    this.showFloorTextField = false,
    this.buildingName,
    this.buildingId,
    this.error,
  });

  VisitorFormState copyWith({
    bool? showBuildingTextField,
    bool? showBlockTextField,
    bool? showFloorTextField,
    String? buildingName,
    String? buildingId,
    Object? error,
  }) {
    return VisitorFormState(
      showBuildingTextField:
          showBuildingTextField ?? this.showBuildingTextField,
      showBlockTextField: showBlockTextField ?? this.showBlockTextField,
      showFloorTextField: showFloorTextField ?? this.showFloorTextField,
      buildingName: buildingName ?? this.buildingName,
      buildingId: buildingId ?? this.buildingId,
      error: error ?? null,
    );
  }
}
