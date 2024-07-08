import 'package:chage_learn_flutter/model/user_model.dart';
import 'package:chage_learn_flutter/screens/home/widget/change_users/textfile_add_user.dart';

import 'package:chage_learn_flutter/screens/home/widget/text_infor.dart';
import 'package:chage_learn_flutter/services/api_service/home_service.dart';
import 'package:chage_learn_flutter/widgets/learn_app_bar.dart';
import 'package:flutter/material.dart';

class UpdateUser extends StatefulWidget {
  const UpdateUser({
    super.key,
  });

  @override
  State<UpdateUser> createState() => _UpdateUserState();
}

class _UpdateUserState extends State<UpdateUser> {
  final HomeService _homeService = HomeService();

  late TextEditingController _controllerName;
  late TextEditingController _controllerGmail;
  late TextEditingController _controllerAddress;
  late TextEditingController _controllerAge;
  late TextEditingController _controllerNationality;

  @override
  void initState() {
    _controllerName = TextEditingController();
    _controllerGmail = TextEditingController();
    _controllerAddress = TextEditingController();
    _controllerAge = TextEditingController();
    _controllerNationality = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
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
                  onChanged: (value) {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextfileAddUser(
                  textController: _controllerGmail,
                  labelText: "Nhập gmail bạn muốn thay đổi",
                  hintText: 'Nhập gmail',
                  onChanged: (value) {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextfileAddUser(
                  textController: _controllerAddress,
                  labelText: "Nhập địa chỉ bạn muốn thay đổi",
                  hintText: 'Nhập địa chỉ',
                  onChanged: (value) {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextfileAddUser(
                  textController: _controllerAge,
                  labelText: "Nhập ngày sinh bạn muốn thay đổi",
                  hintText: 'Nhập ngày sinh',
                  onChanged: (value) {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextfileAddUser(
                  textController: _controllerNationality,
                  labelText: "Nhập quốc tịch bạn muốn thay đổi",
                  hintText: 'Nhập quốc tịch',
                  onChanged: (value) {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor:
                          const Color.fromARGB(255, 149, 196, 235)),
                  onPressed: () {
                    UserModel newUser = UserModel(
                      image: "assets/images/hanam.jpg",
                      name: _controllerName.text,
                      mail: _controllerGmail.text,
                      address: _controllerAddress.text,
                      dateOfBirth: _controllerAge.text,
                      nationality: _controllerNationality.text,
                      // id: int.parse(_controllerId.text),
                    );

                    _homeService.createData(newUser);
                    Navigator.pop(context);
                  },
                  child: const TextInfor(
                    text: 'Thêm tài khoản',
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
