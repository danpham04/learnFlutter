import 'package:flutter/material.dart';

class ProfileTextHello extends StatelessWidget {
  const ProfileTextHello({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 18.0, left: 10),
          child: IconButton(
              onPressed: () {
                DefaultTabController.of(context)
                    .animateTo(0); // đưa về trang đầu tiên
              },
              icon: const Icon(Icons.close)),
        ),
        const ListTile(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Chào mừng",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                  Icon(
                    Icons.back_hand,
                    color: Colors.amber,
                  )
                ],
              ),
              Text(
                'Quý Khách đến với MBS',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          subtitle: Text(
              'Khởi đầu hành trình đầu tư chứng khoán của bạn chỉ trong vòng 2 phút'),
        ),
        const ListTile(
            subtitle: Text(
          'Vui lòng chuẩn bị theo đường dẫn dưới đây',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ))
      ],
    );
  }
}
