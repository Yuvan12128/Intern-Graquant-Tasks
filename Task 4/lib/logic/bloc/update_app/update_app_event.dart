part of 'update_app_bloc.dart';

class UpdateAppEvent {}

class AppVersionCheckEvent extends UpdateAppEvent {}

class UpdateMaybeLaterEvent extends UpdateAppEvent {}

class AppUpdateEvent extends UpdateAppEvent {}
