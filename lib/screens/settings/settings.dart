import 'package:chage_learn_flutter/screens/settings/change_language/localization_checker.dart';
import 'package:chage_learn_flutter/screens/settings/change_language/setting_language.dart';
import 'package:chage_learn_flutter/screens/settings/widgets/button_setting.dart';
import 'package:chage_learn_flutter/screens/settings/widgets/listile_setting_noti.dart';
import 'package:chage_learn_flutter/screens/settings/widgets/listtile_setting_acc.dart';
import 'package:chage_learn_flutter/screens/settings/widgets/setting_chage.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingState();
}

class _SettingState extends State<Settings> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: ListView(
          children: [
            SettingChage(
              textName: "account".tr(),
              icon: Icons.person,
              colorIcon: Colors.blue,
            ),
            ListtileSettingAcc(
                textList: "changePassword".tr(),
                iconList: const Icon(Icons.arrow_forward_ios)),
            ListtileSettingAcc(
                textList: "contentSettings".tr(),
                iconList: const Icon(Icons.arrow_forward_ios)),
            ListtileSettingAcc(
                textList: "social".tr(),
                iconList: const Icon(Icons.arrow_forward_ios)),
            ListtileSettingAcc(
              textList: "language".tr(),
              iconList: const Icon(Icons.arrow_forward_ios),
              check: () {
                Navigator.pushNamed(context, '/SettingLanguage');
                // LocalizationChecker.changeLanguge(context);
              },
            ),
            ListtileSettingAcc(
                textList: "privacyAndSecurity".tr(),
                iconList: const Icon(Icons.arrow_forward_ios)),
            SettingChage(icon: Icons.volume_up, textName: "notification".tr()),
            ListileSettingNoti(
              textNameAction: "themeDark".tr(),
              colorActive: Colors.blue,
              colorInactive: Colors.pink,
            ),
            ListileSettingNoti(
              textNameAction: "accountActive".tr(),
              colorActive: Colors.blue,
              colorInactive: Colors.pink,
            ),
            ListileSettingNoti(
              textNameAction: "opportunity".tr(),
              colorActive: Colors.blue,
              colorInactive: Colors.pink,
            ),
            ButtonSetting(
              hanhDong: () {
                Navigator.pop(context);
              },
              textButton: "signOut".tr(),
              sizeButton: const Size(150, 40),
              colorButton: const Color.fromARGB(255, 218, 206, 167),
            ),
          ],
        ),
      ),
    );
  }
}
