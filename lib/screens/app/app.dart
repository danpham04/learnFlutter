import 'package:chage_learn_flutter/global/app_routes.dart';
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
      onGenerateRoute: AppRoutes.onGenerateRoute,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}
