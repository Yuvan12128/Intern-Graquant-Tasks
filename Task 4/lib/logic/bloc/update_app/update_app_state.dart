part of 'update_app_bloc.dart';

class UpdateAppState extends Equatable {
  final VersionStatus? status;
  UpdateAppState({
    this.status,
  });
  @override
  List<Object?> get props => [
        status,
      ];
}

class UpdateMaybeLater extends UpdateAppState {}

class UpdateApp extends UpdateAppState {}

class UpdateAppErrorState extends UpdateAppState {
  final Object? error;
  final VersionStatus? status;
  UpdateAppErrorState({
    this.error,
    this.status,
  }) : super(
          status: status,
        );
}
