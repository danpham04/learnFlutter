import 'package:flutter/material.dart';

class TextInLogin extends StatelessWidget {
  const TextInLogin(
      {super.key,
      required this.signUp,
      this.boolIn,
      this.sizeText,
      this.colorText});
  final String signUp;
  final FontWeight? boolIn;
  final double? sizeText;
  final Color? colorText;
  @override
  Widget build(BuildContext context) {
    return Text(
      signUp,
      style:
          TextStyle(fontWeight: boolIn, fontSize: sizeText, color: colorText),
    );
  }
}
