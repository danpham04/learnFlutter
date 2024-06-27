import 'package:flutter/material.dart';

class LanguageInheritedWidget extends InheritedWidget {
  final Locale locale;
  final Function(Locale) setLocale;

  const LanguageInheritedWidget({
    super.key,
    required this.locale,
    required this.setLocale,
    required super.child,
  });

  static LanguageInheritedWidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<LanguageInheritedWidget>();
  }

  @override
  bool updateShouldNotify(LanguageInheritedWidget oldWidget) {
    return oldWidget.locale != locale;
  }
}
