import 'package:chage_learn_flutter/login/widget/icon_in_login.dart';
import 'package:flutter/material.dart';

class IconLogin extends StatelessWidget {
  const IconLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconInLogin(
          iconLogin: Icons.facebook,
          sizeIcon: 35,
          colorIcon: Colors.blue,
        ),
        IconInLogin(
          iconLogin: Icons.tiktok,
          sizeIcon: 35,
          colorIcon: Color.fromARGB(255, 142, 191, 231),
        ),
        IconInLogin(
          iconLogin: Icons.mail,
          sizeIcon: 35,
          colorIcon: Colors.red,
        ),
      ],
    ));
  }
}
