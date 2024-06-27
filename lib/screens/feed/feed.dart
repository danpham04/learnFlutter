import 'package:carousel_slider/carousel_slider.dart';
import 'package:chage_learn_flutter/screens/feed/widgets/feed_path.dart';
import 'package:chage_learn_flutter/screens/home/widget/user_imformation.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Feed extends StatefulWidget {
  const Feed({super.key});

  @override
  State<Feed> createState() => _ProfileState();
}

class _ProfileState extends State<Feed> {
  int _curr = 0;

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
                child: const Icon(Icons.arrow_back)),
            ElevatedButton(
                onPressed: () {
                  _controller.nextPage();
                },
                child: const Icon(Icons.arrow_forward))
          ],
        )
      ],
    );
  }
}
