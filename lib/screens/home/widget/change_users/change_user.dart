import 'package:chage_learn_flutter/model/user_model.dart';
import 'package:chage_learn_flutter/screens/home/widget/change_users/textfile_add_user.dart';

import 'package:chage_learn_flutter/screens/home/widget/text_infor.dart';
import 'package:chage_learn_flutter/widgets/learn_app_bar.dart';
import 'package:flutter/material.dart';

class ChangeUser extends StatefulWidget {
  const ChangeUser(
      {super.key, required this.index, required this.userHomeData});
  final int index;
  final UserModel userHomeData;

  @override
  State<ChangeUser> createState() => _ChangeUserState();
}

class _ChangeUserState extends State<ChangeUser> {
  late TextEditingController _controllerName;
  late TextEditingController _controllerGmail;
  late TextEditingController _controllerAddress;
  late TextEditingController _controllerAge;
  late TextEditingController _controllerNationality;

  @override
  void initState() {
    // TODO: implement initState
    _controllerName = TextEditingController();
    _controllerGmail = TextEditingController();
    _controllerAddress = TextEditingController();
    _controllerAge = TextEditingController();
    _controllerNationality = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controllerName.dispose();
    _controllerGmail.dispose();
    _controllerAddress.dispose();
    _controllerAge.dispose();
    _controllerNationality.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: LearnAppBar(
        titleName: 'Nhập dữ liệu',
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextfileAddUser(
                  textController: _controllerName,
                  labelText: "Nhập tên bạn muốn thay đổi",
                  hintText: 'Nhập tên',
                  onChanged: (value) {
                    setState(() {
                      widget.userHomeData.name = _controllerName.text;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextfileAddUser(
                  textController: _controllerGmail,
                  labelText: "Nhập gmail bạn muốn thay đổi",
                  hintText: 'Nhập gmail',
                  onChanged: (value) {
                    setState(() {
                      widget.userHomeData.mail = _controllerGmail.text;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextfileAddUser(
                  textController: _controllerAddress,
                  labelText: "Nhập địa chỉ bạn muốn thay đổi",
                  hintText: 'Nhập địa chỉ',
                  onChanged: (value) {
                    setState(() {
                      widget.userHomeData.address = _controllerAddress.text;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextfileAddUser(
                  textController: _controllerAge,
                  labelText: "Nhập ngày sinh bạn muốn thay đổi",
                  hintText: 'Nhập ngày sinh',
                  onChanged: (value) {
                    setState(() {
                      widget.userHomeData.dateOfBirth = _controllerAge.text;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextfileAddUser(
                  textController: _controllerNationality,
                  labelText: "Nhập quốc tịch bạn muốn thay đổi",
                  hintText: 'Nhập quốc tịch',
                  onChanged: (value) {
                    setState(() {
                      widget.userHomeData.nationality =
                          _controllerNationality.text;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor:
                          const Color.fromARGB(255, 149, 196, 235)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const TextInfor(
                    text: 'Thay đổi tài khoản',
                    colorText: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
