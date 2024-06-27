import 'package:flutter/material.dart';

class IconInLogin extends StatelessWidget {
  const IconInLogin(
      {super.key,
      required this.sizeIcon,
      this.colorIcon,
      required this.iconLogin});
  final double sizeIcon;
  final Color? colorIcon;
  final IconData iconLogin;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(iconLogin, color: colorIcon,size: sizeIcon, ), onPressed: () {});
  }
}
