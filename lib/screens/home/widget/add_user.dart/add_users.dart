import 'package:chage_learn_flutter/screens/home/widget/add_user.dart/textfile_add_user.dart';
import 'package:chage_learn_flutter/screens/home/widget/home_data.dart';
import 'package:flutter/material.dart';

class AddUsers extends StatefulWidget {
  const AddUsers({super.key});

  @override
  State<AddUsers> createState() => _AddUsersState();
}

class _AddUsersState extends State<AddUsers> {
  List userHomeData = HomeData().userHomeData;

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
      appBar: AppBar(
        title: const Text('Nhập dữ liệu'),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              const Text('Nhập tên của bạn'),
              TextfileAddUser(
                textController: _controllerName,
                labelText: "Nhập tên bạn muốn thêm",
                hintText: 'Nhập tên',
                onChanged: (value) {},
              ),
              const Text('Nhập gmail của bạn'),
              const TextField(), 
              const Text('Nhập năm sinh của bạn'),
              const TextField(),
              const Text('Nhập quốc tịch của bạn'),
              const TextField(),
              ElevatedButton(
                  onPressed: () {}, child: const Text('Thêm tài khoản'))
            ],
          ),
        ),
      ),
    );
  }
}
