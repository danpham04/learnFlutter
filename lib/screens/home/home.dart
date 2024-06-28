import 'package:chage_learn_flutter/screens/home/widget/change_users/change_user.dart';
import 'package:chage_learn_flutter/screens/home/widget/home_data.dart';
import 'package:chage_learn_flutter/screens/home/widget/show_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List userHomeData = HomeData().userHomeData;

  void _deleteUser(int index) {
    setState(() {
      userHomeData.removeAt(index);
    });
  }

  void _updateUser(int index, List newUser) {
    setState(() {
      userHomeData[index] = newUser;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SlidableAutoCloseBehavior(
      closeWhenOpened: true, // khi kéo item này item khác đóng lại
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: ListView.builder(
          itemCount: userHomeData.length,
          itemBuilder: (context, index) {
            final user = userHomeData[index];
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
                    // onPressed: (context) {
                    //   Navigator.pushNamed(context, '/ChangeUser');
                    // },
                    onPressed: (context) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChangeUser(
                            index: index,
                            userHomeData: userHomeData,
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
