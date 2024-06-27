import 'package:chage_learn_flutter/screens/settings/change_language/localization_checker.dart';
import 'package:chage_learn_flutter/screens/settings/widgets/button_setting.dart';
import 'package:flutter/material.dart';

class SettingLanguage extends StatefulWidget {
  const SettingLanguage({super.key});

  @override
  State<SettingLanguage> createState() => _SettingLanguageState();
}

class _SettingLanguageState extends State<SettingLanguage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change Language'),
      ),
      body: Column(
        children: [
          ButtonSetting(
            textButton: 'Tiếng Anh',
            sizeButton: const Size(200, 50),
            hanhDong: () {
              LocalizationChecker.changeLanguge(context);
            },
          ),
          ButtonSetting(
            textButton: 'Tiếng việt',
            sizeButton: const Size(200, 50),
            hanhDong: () {
              LocalizationChecker.changeLanguge(context);
            },
          )
        ],
      ),
    );
  }
}
