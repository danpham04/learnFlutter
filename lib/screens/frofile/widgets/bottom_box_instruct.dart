import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomBoxInstruct extends StatefulWidget {
  const BottomBoxInstruct({super.key});

  @override
  State<BottomBoxInstruct> createState() => _BottomBoxInstructState();
}

class _BottomBoxInstructState extends State<BottomBoxInstruct> {
  Uri phone = Uri(scheme: 'tel', path: '19009088');
  callnumber() async {
    await launchUrl(phone);
  } // mở ứng dụng phone mà ở đó điền sẵn số điện thoại đã ghi ở path

  call() async {
    await FlutterPhoneDirectCaller.callNumber('19009088');
  } // chuyển gọi luôn mà ko cần phải qua ứng dụng phone của đt

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70.0, left: 8, right: 8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.phone,
                color: Colors.blue,
              ),
              const Text('Tổng đài CSKH:'),
              TextButton(
                  onPressed: callnumber,
                  child: const Text(
                    '1900 9088',
                    style: TextStyle(color: Colors.blue),
                  ))
            ],
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 240, 240, 240)),
            child: const ListTile(
              titleAlignment: ListTileTitleAlignment.top,
              leading: Icon(
                Icons.lightbulb,
                color: Colors.amber,
              ),
              title: Text(
                'Cách mở tài khoản nhanh',
              ),
              subtitle: Text.rich(
                TextSpan(
                    text: 'Nếu bạn có tài khoản tại ',
                    children: [
                      TextSpan(
                          text: 'MB Bank',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: ' vui lòng xem hướng dẫn',
                          style: TextStyle(color: Colors.green)),
                      TextSpan(
                        text: ' tại đây',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                        // recognizer: ,
                      )
                    ],
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.red)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: Colors.blue,
              ),
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => const Website()));
                Navigator.pushNamed(context, '/Website');
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  Text(
                    "Bắt đầu",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Icon(Icons.arrow_forward, color: Colors.white),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
