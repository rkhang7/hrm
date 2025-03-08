import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class TranslationService extends Translations {
  static const locale = Locale('en', '');
  static const fallbackLocale = Locale('en', '');

  static final langs = ['en', 'vi', 'ko'];

  static final locales = [
    const Locale('en', ''),
    const Locale('vi', ''),
    const Locale('ko', ''),
  ];

  static Map<String, Map<String, String>> translations = {};

  static Future<void> loadTranslations() async {
    for (var lang in langs) {
      String jsonString =
          await rootBundle.loadString('assets/langs/$lang.json');
      Map<String, dynamic> jsonMap = json.decode(jsonString);
      translations[lang] =
          jsonMap.map((key, value) => MapEntry(key, value.toString()));
    }
  }

  @override
  Map<String, Map<String, String>> get keys => translations;

  static void changeLocale(String langCode) {
    var resultLocale = locales.firstWhere(
        (element) => element.languageCode == langCode,
        orElse: () => locale);
    Get.updateLocale(resultLocale);
  }
}
