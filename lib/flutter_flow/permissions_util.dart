import 'package:flutter/foundation.dart';
import 'package:permission_handler/permission_handler.dart';

const kPermissionStateToBool = {
  PermissionStatus.granted: true,
  PermissionStatus.limited: true,
  PermissionStatus.denied: false,
  PermissionStatus.restricted: false,
  PermissionStatus.permanentlyDenied: false,
};

final cameraPermission = Permission.camera;
final locationPermission = Permission.location;
final photoLibraryPermission = Permission.photos;
final microphonePermission = Permission.microphone;
final notificationsPermission = Permission.notification;

Future<bool> getPermissionStatus(Permission setting) async {
  if (kIsWeb) {
    return true;
  }
  final _status = await setting.status;
  return kPermissionStateToBool[_status]!;
}

Future<void> requestPermission(Permission setting) async {
  if (kIsWeb) {
    return;
  }
  await setting.request();
}
