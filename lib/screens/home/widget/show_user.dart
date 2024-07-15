import 'package:chage_learn_flutter/global/app_routes.dart';
import 'package:chage_learn_flutter/model/user_model.dart';
import 'package:flutter/material.dart';

class ShowUsers extends StatelessWidget {
  const ShowUsers({
    super.key,
    required this.user,
  });

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipOval(
        child: Image.network(
          user.image??'',
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
      ),
      title: Text(user.name??''),
      subtitle: Text(user.mail??''),
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => Information(
        //       user: user['name'],
        //       mail: user['mail'],
        //       address: user['address'],
        //       dateOfBirth: user['date of birth'],
        //       nationality: user['nationality'], img: user['imgavt'],
        //       // images: Image.asset(user['imgavt']),
        //     ),
        //   ),
        // );
        Navigator.of(context).pushNamed(AppRoutes.information, arguments: user);
      },
      
    );
  }
}
