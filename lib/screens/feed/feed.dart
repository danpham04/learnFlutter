import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:chage_learn_flutter/global/app_routes.dart';
import 'package:chage_learn_flutter/model/user_model.dart';
import 'package:chage_learn_flutter/screens/feed/widgets/feed_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Feed extends StatefulWidget {
  const Feed({super.key});

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  int _curr = 0;
  List<UserModel> _loadImg = [];
  Future<void> readImg() async{
    final String response = await rootBundle.loadString('assets/jsons/user_data.json');
    final data = await jsonDecode(response);
    
  }



  final _controller = CarouselController();
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

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 100,
        ),
        Center(
          child: CarouselSlider.builder(
            itemCount: FeedPath().feedData.length,
            itemBuilder: (context, index, realIndex) {
              final img = FeedPath().feedData[index];
              final UserModel users = img;
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed( AppRoutes.userInformation,arguments:users );
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
            carouselController: _controller,
            options: CarouselOptions(
              initialPage: 0,
              height: 400,
              onPageChanged: (index, reason) => setState(() {
                _curr = index;
              }),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: AnimatedSmoothIndicator(
            activeIndex: _curr,
            count: FeedPath().feedData.length,
            effect: const JumpingDotEffect(
              dotHeight: 10,
              dotWidth: 10,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                _controller.previousPage();
              },
              child: const Icon(Icons.arrow_back),
            ),
            const SizedBox(
              width: 20,
            ),
            ElevatedButton(
              onPressed: () {
                _controller.nextPage();
              },
              child: const Icon(Icons.arrow_forward),
            )
          ],
        )
      ],
    );
  }
}
