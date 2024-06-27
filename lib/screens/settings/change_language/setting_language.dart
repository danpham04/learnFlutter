import 'package:chage_learn_flutter/screens/settings/change_language/localization_checker.dart';
import 'package:chage_learn_flutter/screens/settings/widgets/button_setting.dart';
import 'package:easy_localization/easy_localization.dart';
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
        leading: IconButton(
            onPressed: () {
              // hàm nhảy về màn hình trước đó
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 24,
            )),
        title: Text("changeLanguage".tr()),
      ),
      body: Column(
        children: [
          ButtonSetting(
            textButton: 'Tiếng Anh',
            sizeButton: const Size(200, 50),
            hanhDong: () {
              setState(() {
                LocalizationChecker.changeLangugeVN(context);
              });
            },
          ),
          ButtonSetting(
            textButton: 'Tiếng việt',
            sizeButton: const Size(200, 50),
            hanhDong: () {
              setState(() {
                LocalizationChecker.changeLangugeUS(context);
              });
              
            },
          )
        ],
      ),
    );
  }
}
