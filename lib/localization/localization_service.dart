// ignore_for_file: constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'lang/en_us.dart';
import 'lang/vi_vn.dart';

class LocalizationService extends Translations {
  static late LocalizationService _instance;

  static LocalizationService get instance => _instance;

  LocalizationService._(String languageCode) {
    final initLocale = locales[languageCode] ?? fallbackLocale;
    appLocale = initLocale;
  }

  static const VI_CODE = 'vi';
  static const EN_CODE = 'en';

  static var fallbackLocale = Locale(VI_CODE, 'VN');
  static Locale appLocale = fallbackLocale;

  static final locales = {
    EN_CODE: const Locale(EN_CODE, 'US'),
    VI_CODE: const Locale(VI_CODE, 'VN'),
  };

  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': enUS,
        'vi_VN': viVN,
      };

  // GETS LOCALE FROME LANGUAGE AND UPDATE THE LOCALE
  static Future<void> changeLocale(String lang) async {
    final locale = _getLocaleFromLanguage(lang);
    final selectedLocale = locale ?? fallbackLocale;
    appLocale = selectedLocale;

    // await _saveLanguageCode(appLocale.languageCode);

    await Get.updateLocale(selectedLocale);
  }

  // Finds language in `langs` list and returns it as Locale
  static Locale? _getLocaleFromLanguage(String lang) {
    final selected = locales[lang];
    if (selected != null) {
      return selected;
    }
    return Get.locale;
  }

  // init Locale language
  static Future<void> init() async {
    fallbackLocale = Locale(EN_CODE, 'US');
    _instance = LocalizationService._(appLocale.languageCode);
  }
}
