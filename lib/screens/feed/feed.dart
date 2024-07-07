import 'package:carousel_slider/carousel_slider.dart';
import 'package:chage_learn_flutter/global/app_routes.dart';
import 'package:chage_learn_flutter/model/user_model.dart';
import 'package:chage_learn_flutter/screens/feed/widgets/feed_path.dart';
import 'package:chage_learn_flutter/services/api_service/home_service.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Feed extends StatefulWidget {
  const Feed({super.key});

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  int _curr = 0;
  final _controller = CarouselController();

  List<UserModel> _loadUser = [];

  final HomeService _homeService = HomeService();

  @override
  void initState() {
    getData();
    super.initState();
  }

  void getData() async {
    final List<UserModel> loadUserTemp = await _homeService.getData();

    setState(() {
      _loadUser = loadUserTemp;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 100,
        ),
        Center(
          child: CarouselSlider.builder(
            itemCount: _loadUser.length,
            itemBuilder: (context, index, realIndex) {
              UserModel users = UserModel();

              if (_loadUser.isNotEmpty) {
                users = _loadUser[index];

                return GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(AppRoutes.userInformation, arguments: users);
                  },
                  child: SizedBox(
                    width: 270,
                    child: Image.asset(
                      users.image ?? '',
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              }
              return const Center(
                child: Text(
                  "Load Images.......!",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
