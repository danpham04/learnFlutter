import 'package:chage_learn_flutter/screens/home/widget/imformation.dart';
import 'package:flutter/material.dart';

class ShowUsers extends StatelessWidget {
  const ShowUsers({
    super.key,
    required this.user,
  });

  final user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipOval(
        child: Image.asset(
          user['imgavt'],
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
      ),
      title: Text(user['name']),
      subtitle: Text(user['mail']),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Imformation(
              user: user['name'],
              mail: user['mail'],
              address: user['address'],
              dateOfBirth: user['date of birth'],
              nationality: user['Nationality'], img: user['imgavt'],
              // images: Image.asset(user['imgavt']),
            ),
          ),
        );
      },
    );
  }
}