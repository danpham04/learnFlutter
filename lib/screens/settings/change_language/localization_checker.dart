
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LocalizationChecker {
  static changeLangugeUS(BuildContext context) {
    Locale? currentLocal = EasyLocalization.of(context)!.currentLocale;
    if (currentLocal == const Locale('en', 'US')) {
      context.setLocale(const Locale('vi', 'VN'));
    }
  }

  static changeLangugeVN(BuildContext context) {
    Locale? currentLocal = EasyLocalization.of(context)!.currentLocale;
    if (currentLocal == const Locale('vi', 'VN')) {
      context.setLocale(const Locale('en', 'US'));
    }
  }
}
