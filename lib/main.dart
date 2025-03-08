import 'package:flutter/material.dart';
import 'package:hrm/app.dart';
import 'package:hrm/services/translation_service.dart';
import 'package:hrm/utils/device_util.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DeviceUtil.setWhiteStatusBar();
  await TranslationService.loadTranslations();

  runApp(const App());
}
