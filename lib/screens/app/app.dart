import 'package:chage_learn_flutter/login/login.dart';
import 'package:chage_learn_flutter/screens/feed/feed.dart';
import 'package:chage_learn_flutter/screens/frofile/profile.dart';
import 'package:chage_learn_flutter/screens/home/home.dart';
import 'package:chage_learn_flutter/screens/home_screen/home_screen.dart';
import 'package:chage_learn_flutter/screens/settings/change_language/setting_language.dart';
import 'package:chage_learn_flutter/screens/settings/settings.dart';
import 'package:chage_learn_flutter/screens/website/website.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: MyHome(),
      // home: const Login(),

      debugShowCheckedModeBanner: false,
      title: 'App Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHome(),
        // '/': (context) => const Login(),
        // '/MyHome': (context) => const MyHome(),
        // '/Home': (context) => const Home(),
        // '/Feed': (context) => const Feed(),
        // '/Profile': (context) => const Profile(),
        // '/Setting': (context) => const Settings(),
        '/Website': (context) => const Website(),
        '/SettingLanguage': (context) => const SettingLanguage(),
      },
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}
