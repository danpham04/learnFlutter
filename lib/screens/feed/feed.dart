import 'package:carousel_slider/carousel_slider.dart';
import 'package:chage_learn_flutter/screens/feed/widgets/feed_path.dart';
import 'package:chage_learn_flutter/screens/home/widget/user_imformation.dart';
import 'package:flutter/material.dart';

class Feed extends StatefulWidget {
  const Feed({super.key});

  @override
  State<Feed> createState() => _ProfileState();
}

class _ProfileState extends State<Feed> {
  final int _curr = 0;
  @override
  Widget build(BuildContext context) {
    // return Padding(
    //   padding: const EdgeInsets.all(16),
    //   child: ListView.builder(
    //       itemCount: FeedData().userFeed.length,
    //       itemBuilder: (context, index) {
    //         final users = FeedData().userFeed[index];
    //         return Container(
    //           padding: const EdgeInsets.symmetric(vertical: 10),
    //           decoration: const BoxDecoration(
    //             border: Border(bottom: BorderSide(width: 3)),
    //           ),
    //           child: ListTile(
    //             leading: CircleAvatar(
    //               backgroundColor: Colors.green,
    //               radius: 30,
    //               child: Text(users['icon']),
    //             ),
    //             title: Text(users['item']),
    //             subtitle: Text(users['subitem']),
    //             trailing: const Icon(Icons.more_vert),
    //           ),
    //         );
    //       }),
    // );

    return Center(
      child: CarouselSlider.builder(
        itemCount: FeedPath().feedData.length,
        itemBuilder: (context, index, realIndex) {
          final img = FeedPath().feedData[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => UserImformation(
                      user: img['name'],
                      mail: img['mail'],
                      address: img['address'],
                      dateOfBirth: img['date of birth'],
                      nationality: img['Nationality'],
                      img: img['imgavt']),
                ),
              );
            },
            child: SizedBox(
              width: 270,
              child: Image.asset(
                img['imgavt'],
                fit: BoxFit.cover,
              ),
            ),
          );
        },
        options: CarouselOptions(
          height: 400,
        ),
      ),
    );
  }
}
