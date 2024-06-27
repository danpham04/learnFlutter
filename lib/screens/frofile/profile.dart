import 'package:chage_learn_flutter/screens/frofile/widgets/bottom_box_instruct.dart';
import 'package:chage_learn_flutter/screens/frofile/widgets/box_instruct.dart';
import 'package:chage_learn_flutter/screens/frofile/widgets/profile_text_hello.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Color.fromARGB(255, 106, 178, 236), Colors.white],
            begin: Alignment.bottomRight,
            end: Alignment.topRight),
      ),
      child: const Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ProfileTextHello(), BoxInstruct(), BottomBoxInstruct()],
        ),
      ),
    );
  }
}
