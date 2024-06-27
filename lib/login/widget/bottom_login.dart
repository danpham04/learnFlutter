import 'package:chage_learn_flutter/login/widget/text_in_login.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class BottomLogin extends StatelessWidget {
  const BottomLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 65),
          child: TextInLogin(
            signUp: 'Or Sign UP Using'.tr(),
            sizeText: 12,
          ),
        ),
        TextButton(
            onPressed: () {},
            child: TextInLogin(
              signUp: 'SIGN UP'.tr(),
              sizeText: 15,
            ))
      ],
    );
  }
}
