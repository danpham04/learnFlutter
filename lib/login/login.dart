import 'package:chage_learn_flutter/login/widget/bottom_login.dart';
import 'package:chage_learn_flutter/login/widget/icon_login.dart';
import 'package:chage_learn_flutter/login/widget/input_login.dart';
import 'package:chage_learn_flutter/login/widget/text_in_login.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 124, 177, 219),
            Color.fromARGB(255, 206, 99, 238)
          ], begin: Alignment.bottomLeft, end: Alignment.topRight),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Center(
          child: Container(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
            // margin: const EdgeInsets.only(top: 40),
            width: 340,
            height: MediaQuery.of(context).size.height * 0.75,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            child:  Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextInLogin(
                    signUp: 'Login'.tr(),
                    boolIn: FontWeight.bold,
                    sizeText: 35,
                  ),
                ),
                InputLogin(),
                // ButtonLogin(),
                Padding(
                  padding: EdgeInsets.only(top: 40, bottom: 8),
                  child: TextInLogin(
                    signUp: 'Or Sign Up Using'.tr(),
                    sizeText: 12,
                  ),
                ),
                IconLogin(),
                BottomLogin(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
