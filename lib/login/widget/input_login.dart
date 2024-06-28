import 'package:chage_learn_flutter/global/app_routes.dart';
import 'package:chage_learn_flutter/login/widget/data_login.dart';
import 'package:chage_learn_flutter/login/widget/text_in_login.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class InputLogin extends StatefulWidget {
  const InputLogin({
    super.key,
  });

  @override
  State<InputLogin> createState() => _InputLoginState();
}

class _InputLoginState extends State<InputLogin> {
  String? inputTextFieldUser;
  late final TextEditingController _editingControllerUser;
  String? inputTextFieldPassword;
  late final TextEditingController _editingControllerPassword;
  bool _password = true;
  final _formKey = GlobalKey<FormState>();

  // final _focusUserMail = FocusNode();
  // final _focusPass = FocusNode();

  @override
  void initState() {
    super.initState();
    _editingControllerUser = TextEditingController();
    _editingControllerPassword = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _editingControllerPassword.dispose();
    _editingControllerUser.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(9),
                child: TextInLogin(signUp: "gmail".tr()),
              ),
              TextFormField(
                controller: _editingControllerUser,
                onChanged: (value) {
                  setState(
                    () {
                      inputTextFieldUser = value;
                    },
                  );
                },
                validator: (value) {
                  return _checkMail(value!);
                },
                // focusNode: _focusUserMail,
                // onFieldSubmitted: (value) =>
                //     Focus.of(context).requestFocus(_focusPass),
                decoration: InputDecoration(
                  hintText: "typeYourMail".tr(),
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Color.fromARGB(255, 112, 95, 95),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(9),
                child: TextInLogin(signUp: "password".tr()),
              ),
              TextFormField(
                controller: _editingControllerPassword,
                // focusNode: _focusPass,
                // onFieldSubmitted: (value) => ,
                onChanged: (value) {
                  setState(
                    () {
                      inputTextFieldPassword = value;
                    },
                  );
                },
                decoration: InputDecoration(
                  hintText: "typeYourPassword".tr(),
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Color.fromARGB(255, 112, 95, 95),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(
                        () {
                          _password = !_password;
                        },
                      );
                    },
                    icon: Icon(
                        _password ? Icons.remove_red_eye : Icons.lock_outline),
                  ),
                ),
                obscureText: _password,
                validator: (value) {
                  return checkPassword(value);
                },
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20, top: 6),
          child: TextInLogin(
            signUp: "forgotPassword".tr(),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 124, 177, 219),
              Color.fromARGB(255, 206, 99, 238)
            ], begin: Alignment.centerLeft, end: Alignment.centerRight),
            borderRadius: BorderRadius.all(
              Radius.circular(100),
            ),
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
            ),
            onPressed: _onSubmit,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextInLogin(
                  signUp: "login".tr(),
                  boolIn: FontWeight.bold,
                  colorText: Colors.white,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  String? _checkMail(String value) {
    if (value.isEmpty) {
      return "pleaseDoNotLeaveEmpty".tr();
    }
    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
      return "pleaseEnterValidAddress".tr();
    }
    return null;
  }

  String? checkPassword(String? value) {
    if (value == null || value.isEmpty) {
      return "pleaseDoNotLeavePasswordEmpty".tr();
    }
    if (value.length > 12) {
      return "pleaseDoNotEnterMoreThan12Characters".tr();
    }
    if (!RegExp(r'^(?=.*[A-Z])').hasMatch(value)) {
      return "passwordMustContainUpperCase".tr();
    }
    if (!RegExp(r'^(?=.*[!@#$%^&*(),.?":{}|<>])').hasMatch(value)) {
      return "passwordMustContainSpecialCharacter".tr();
    }
    return null;
  }

  void _onSubmit() {
    setState(() {
      _formKey.currentState?.validate();
    });
    bool userExists = false;

    for (var user in DataLogin().userdata) {
      if (user['user'] == _editingControllerUser.text &&
          user['subitem'] == _editingControllerPassword.text) {
        userExists = true;
        break;
      }
    }

    if (userExists) {
      // chuyển màn hình này sang màn hình khác và giữ nguyên màn hình trước đó
      // Navigator.pushAndRemoveUntil(
      //   context,
      //   MaterialPageRoute(builder: (context) => const MyHome()),
      //   (route) {
      //     return false;
      //   },
      // );

      Navigator.of(context)
          .pushNamed(AppRoutes.myHome, arguments: "Toi la bien");
    } else {
      if (_formKey.currentState?.validate() == true) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("incorrectAccountOrPassword".tr())),
        );
      } else {
        return;
      }
    }
  }
}
