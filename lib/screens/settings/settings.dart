import 'package:chage_learn_flutter/screens/settings/change_language/localization_checker.dart';
import 'package:chage_learn_flutter/screens/settings/change_language/setting_language.dart';
import 'package:chage_learn_flutter/screens/settings/widgets/button_setting.dart';
import 'package:chage_learn_flutter/screens/settings/widgets/listile_setting_noti.dart';
import 'package:chage_learn_flutter/screens/settings/widgets/listtile_setting_acc.dart';
import 'package:chage_learn_flutter/screens/settings/widgets/setting_chage.dart';
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
            const SettingChage(
              textName: "Account",
              icon: Icons.person,
              colorIcon: Colors.blue,
            ),
            const ListtileSettingAcc(
                textList: "Change Password",
                iconList: Icon(Icons.arrow_forward_ios)),
            const ListtileSettingAcc(
                textList: "Content Settings",
                iconList: Icon(Icons.arrow_forward_ios)),
            const ListtileSettingAcc(
                textList: "Social", iconList: Icon(Icons.arrow_forward_ios)),
            ListtileSettingAcc(
              textList: "Language",
              iconList: const Icon(Icons.arrow_forward_ios),
              check: () {
                Navigator.pushNamed(context, '/SettingLanguage');
                // LocalizationChecker.changeLanguge(context);
              },
            ),
            const ListtileSettingAcc(
                textList: "Privacy And Security",
                iconList: Icon(Icons.arrow_forward_ios)),
            const SettingChage(icon: Icons.volume_up, textName: "Notification"),
            const ListileSettingNoti(
              textNameAction: "ThemeDark",
              colorActive: Colors.blue,
              colorInactive: Colors.pink,
            ),
            const ListileSettingNoti(
              textNameAction: "Account Active",
              colorActive: Colors.blue,
              colorInactive: Colors.pink,
            ),
            const ListileSettingNoti(
              textNameAction: "Opportunity",
              colorActive: Colors.blue,
              colorInactive: Colors.pink,
            ),
            ButtonSetting(
              hanhDong: () {
                Navigator.pop(context);
                
              },
              textButton: "SIGNOUT",
              sizeButton: const Size(150, 40),
              colorButton: const Color.fromARGB(255, 218, 206, 167),
            ),
          ],
        ),
      ),
    );
  }
}
