import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:new_version_plus/model/version_status.dart';
import 'package:new_version_plus/new_version_plus.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';

part 'update_app_event.dart';
part 'update_app_state.dart';

class UpdateAppBloc extends Bloc<UpdateAppEvent, UpdateAppState> {
  UpdateAppBloc() : super(UpdateAppState()) {
    on<AppVersionCheckEvent>(_appVersionCheck);
    on<UpdateMaybeLaterEvent>(_updateMaybeLater);
    on<AppUpdateEvent>(_appUpdate);
  }

  void _appVersionCheck(
    AppVersionCheckEvent event,
    Emitter<UpdateAppState> emit,
  ) async {
    try {
      final PackageInfo packageInfo = await PackageInfo.fromPlatform();
      if (packageInfo.packageName.split('.').last != 'qa') {
        final NewVersionPlus newVersion = NewVersionPlus(
          androidId: packageInfo.packageName,
        );
        final VersionStatus? status = await newVersion.getVersionStatus();
        emit(UpdateAppState(
          status: status,
        ));
      }
    } catch (err) {
      emit(UpdateAppErrorState(
        error: err,
        status: state.status,
      ));
    }
  }

  void _updateMaybeLater(
    UpdateMaybeLaterEvent event,
    Emitter<UpdateAppState> emit,
  ) {
    try {
      emit(UpdateMaybeLater());
    } catch (err) {
      emit(UpdateAppErrorState(
        error: err,
        status: state.status,
      ));
    }
  }

  void _appUpdate(
    AppUpdateEvent event,
    Emitter<UpdateAppState> emit,
  ) async {
    try {
      final VersionStatus? status = state.status;
      if (status != null) {
        await launchUrl(
          Uri.parse(status.appStoreLink),
          mode: LaunchMode.externalApplication,
        );
        emit(UpdateApp());
      }
    } catch (err) {
      emit(UpdateAppErrorState(
        error: err,
        status: state.status,
      ));
    }
  }
}
