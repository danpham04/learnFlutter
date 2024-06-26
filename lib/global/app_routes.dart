import 'package:chage_learn_flutter/login/login.dart';
import 'package:chage_learn_flutter/screens/feed/feed.dart';
import 'package:chage_learn_flutter/screens/frofile/profile.dart';
import 'package:chage_learn_flutter/screens/home_screen/home_screen.dart';
import 'package:chage_learn_flutter/screens/settings/settings.dart';
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
      case feed:
        return const Feed(); // int
      case profile:
        return const Profile(); // bool
      case settings:
        return const Settings(); // class model
      default:
        throw 'Route  $routeName is not define';
    }
  }

  // define named Routes
  static const String login = '/';
  static const String myHome = '/my_home';
  static const String feed = '/feed';
  static const String profile = '/profile';
  static const String settings = '/settings';
}
