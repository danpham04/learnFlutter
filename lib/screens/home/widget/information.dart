import 'package:chage_learn_flutter/screens/home/widget/text_infor.dart';
import 'package:flutter/material.dart';

class Information extends StatefulWidget {
  const Information(
      {super.key,
      required this.user,
      required this.mail,
      required this.address,
      required this.dateOfBirth,
      required this.nationality,
      required this.img});
  final String user;
  final String mail;
  final String address;
  final String dateOfBirth;
  final String nationality;
  final String img;
  @override
  State<Information> createState() => _ImformationState();
}

class _ImformationState extends State<Information> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('User information'),
        ),
        body: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(42.0),
                  child: Center(
                    child: Container(
                      width: 300,
                      height: 300,
                      padding: const EdgeInsets.only(top: 10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2),
                        borderRadius: BorderRadius.circular(20),
                        gradient: const LinearGradient(
                            colors: [
                              Color.fromARGB(255, 127, 180, 224),
                              Color.fromARGB(255, 247, 163, 240),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 60.0),
                        child: Column(
                          children: [
                            TextInfor(
                              text: 'Gmail: ${widget.mail}',
                              sizeText: 15,
                            ),
                            TextInfor(text: 'Địa chỉ: ${widget.address}'),
                            TextInfor(text: 'Năm sinh: ${widget.dateOfBirth}'),
                            TextInfor(text: 'Quốc tịch: ${widget.nationality}'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          widget.img,
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,
                        ),
                      ),
                      TextInfor(
                        text: widget.user,
                        sizeText: 25,
                        colorText: Colors.black,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              width: 300,
              height: 300,
              padding: const EdgeInsets.only(top: 10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(width: 2),
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(colors: [
                  Color.fromARGB(255, 127, 180, 224),
                  Color.fromARGB(255, 231, 165, 226),
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              ),
            ),
          ],
        ));
  }
}
