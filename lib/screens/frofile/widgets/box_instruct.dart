import 'package:chage_learn_flutter/screens/frofile/widgets/show_input.dart';
import 'package:flutter/material.dart';

class BoxInstruct extends StatelessWidget {
  const BoxInstruct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 248, 240, 240),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Column(
          children: [
            ShowInput(
              text: '1',
              textTile: 'Thông tin cá nhân',
              subTile: 'CCCD/CMND còn hiệu lực',
            ),
            ShowInput(
              text: '2',
              textTile: 'Thiết bị',
              subTile: 'Đảm bảo camera trên thiết bị hoạt động tốt',
            ),
          ],
        ),
      ),
    );
  }
}
