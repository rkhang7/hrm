import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hrm/app.dart';
import 'package:hrm/utils/device_util.dart';

void main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  DeviceUtil.setWhiteStatusBar();

  runApp(const App());
}
