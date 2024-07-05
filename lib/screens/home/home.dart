import 'dart:convert';

import 'package:chage_learn_flutter/model/user_model.dart';
import 'package:chage_learn_flutter/screens/home/widget/change_users/change_user.dart';
import 'package:chage_learn_flutter/screens/home/widget/home_data.dart';
import 'package:chage_learn_flutter/screens/home/widget/show_user.dart';
import 'package:chage_learn_flutter/services/api_service/home_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  List<UserModel> _loadUser = [];

 final HomeService _homeService = HomeService();

 void getData() async{
  final List<UserModel> loadUserTemp = await _homeService.getData();
 
  setState(() {
    _loadUser = loadUserTemp;
  });
 }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  void dispose() {

    super.dispose();
  }

  void _deleteUser(int index) {
    setState(() {
      _loadUser.removeAt(index);
    });
  }

  void _updateUser(int index, UserModel newUser) {
    setState(() {
      _loadUser[index] = newUser;
    });
  }

  @override
  Widget build(BuildContext context) {
    // readData();
    return SlidableAutoCloseBehavior(
      closeWhenOpened: true, // khi kéo item này item khác đóng lại
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: ListView.builder(
          itemCount: _loadUser.length,
          itemBuilder: (context, index) {
            final UserModel user = _loadUser[index];

            return Slidable(
              // startActionPane: ActionPane(
              //   motion: const StretchMotion(),
              //   children: [
              //     SlidableAction(
              //       onPressed: (context) {},
              //       backgroundColor: Colors.green,
              //       icon: Icons.share,
              //       label: 'Share',
              //     )
              //   ],
              // ),
              key: Key(index.toString()), //khóa cho mỗi phần tử
              endActionPane: ActionPane(
                // dismissible: DismissiblePane(
                //   onDismissed: () {},
                // ),
                motion:
                    const ScrollMotion(), // hiệu ứng chuyển ddooongj khi trượt
                children: [
                  SlidableAction(
                    onPressed: (context) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChangeUser(
                            index: index,
                            userHomeData: user,
                          ),
                        ),
                      );
                    },
                    backgroundColor: Colors.green,
                    icon: Icons.change_circle,
                    label: 'Change infor',
                  ),
                  SlidableAction(
                    onPressed: (context) => (_deleteUser(index)),
                    backgroundColor: Colors.red,
                    icon: Icons.delete,
                    label: 'Delete',
                  ),
                ],
              ),

              child: ShowUsers(user: user),
            );
          },
        ),
      ),
    );
  }
}
