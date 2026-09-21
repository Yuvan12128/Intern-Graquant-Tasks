import 'package:permission_handler/permission_handler.dart';

Future<void> requestCameraPermission() async {
  PermissionStatus status = await Permission.camera.status;
  if (!status.isGranted) {
    status = await Permission.camera.request();
    if (!status.isGranted) {
      throw new Exception('Please give camera Access');
    }
  }
}
