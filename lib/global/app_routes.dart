import 'package:chage_learn_flutter/login/login.dart';
import 'package:chage_learn_flutter/screens/home/widget/information.dart';
import 'package:chage_learn_flutter/screens/home/widget/user_information.dart';

import 'package:chage_learn_flutter/screens/home_screen/home_screen.dart';
import 'package:chage_learn_flutter/screens/settings/change_language/setting_language.dart';
import 'package:chage_learn_flutter/screens/website/website.dart';

import 'package:flutter/material.dart';

class AppRoutes {
  static MaterialPageRoute<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute<dynamic>(
      builder: (BuildContext context) => makeRoute(
          context: context,
          routeName: settings.name!,
          arguments: settings.arguments),
    );
  }

  // break thoát ra khỏi vòng lặp khi thấy giá trị sẽ dừng
  // Return thì khi đạt được mục đích sẽ thoát luôn khỏi chương trình
  // Throw sẽ được dùng nhiều trong try catch hoặc việc trả ra lỗi mặc định hay lỗi từ nguồn nào đó ( api, sql lite, sdk)
  // và trả lỗi ra cho người dùng
  static makeRoute({
    required BuildContext context,
    required String routeName,
    Object? arguments,
  }) {
    switch (routeName) {
      case login:
        return const Login();
      case myHome:
        return MyHome(nameTitle: arguments as String); // string
      case website:
        return const Website();
      case changeLanguage:
        return const SettingLanguage();
      case userInformation:
        final args = arguments as Map<String, dynamic>;
        return UserInformation(
            user: args['user']!,
            mail: args['mail']!,
            address: args['address']!,
            dateOfBirth: args['dateOfBirth']!,
            nationality: args['nationality']!,
            img: args['img']!);
      case information:
        final args = arguments as Map<String, dynamic>;
        return Information(
            user: args['name'],
            mail: args['mail'],
            address: args['address'],
            dateOfBirth: args['dateOfBirth'],
            nationality: args['nationality'],
            img: args['img']);

      default:
        throw 'Route  $routeName is not define';
    }
  }

  // define named Routes
  static const String login = '/';
  static const String myHome = '/my_home';
  static const String website = '/website';
  static const String userInformation = '/user_information';
  static const String changeLanguage = '/change_language';
  static const String information = '/information';
}
