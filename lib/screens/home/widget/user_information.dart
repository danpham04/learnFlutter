import 'package:chage_learn_flutter/screens/home/widget/text_infor.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class UserInformation extends StatelessWidget {
  const UserInformation({
    super.key,
    required this.user,
    required this.mail,
    required this.address,
    required this.dateOfBirth,
    required this.nationality,
    required this.img,
  });
  final String user;
  final String mail;
  final String address;
  final String dateOfBirth;
  final String nationality;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("information".tr()),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 8, bottom: 8),
            child: Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    img,
                    width: 70,
                    height: 70,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: TextInfor(
                    text: user,
                    sizeText: 25,
                    colorText: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 18),
            alignment: Alignment.centerLeft,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 127, 180, 224),
                Colors.white,
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextInfor(
                  text: 'Thông tin cá nhân:',
                  sizeText: 20,
                  colorText: Colors.black,
                ),
                TextInfor(
                  text: 'Gmail: $mail',
                  sizeText: 20,
                ),
                TextInfor(
                  text: 'Địa chỉ: $address',
                  sizeText: 20,
                ),
                TextInfor(
                  text: 'Năm sinh: $dateOfBirth',
                  sizeText: 20,
                ),
                TextInfor(
                  text: 'Quốc tịch: $nationality',
                  sizeText: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
