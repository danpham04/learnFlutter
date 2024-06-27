import 'package:chage_learn_flutter/screens/feed/feed.dart';
import 'package:chage_learn_flutter/screens/frofile/profile.dart';
import 'package:chage_learn_flutter/screens/home/home.dart';
import 'package:chage_learn_flutter/screens/home_screen/widgets/tab_home.dart';
import 'package:chage_learn_flutter/screens/home_screen/widgets/tab_icon.dart';
import 'package:chage_learn_flutter/screens/settings/settings.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      animationDuration: const Duration(seconds: 1),
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          leading: const TabIcon(
            icon: Icon(Icons.more_vert),
            colorIcon: Colors.white,
          ),
          title: const Text(
            "AppBar",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          actions: [
            Stack(
              children: [
                const TabIcon(
                  icon: Icon(
                    Icons.notifications,
                    size: 30,
                  ),
                  colorIcon: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 28),
                  child: Container(
                    width: 19,
                    height: 19,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.red),
                    child: const Text(
                      '12',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 13),
                    ),
                  ),
                ),
              ],
            ),
            const TabIcon(
              icon: Icon(Icons.search),
              colorIcon: Colors.white,
            ),
          ],
          bottom: const TabBar(
              indicatorColor: Colors.blue,
              indicatorSize: TabBarIndicatorSize.label,
              // dividerColor: Color.fromARGB(255, 43, 216, 196),
              dividerHeight: 3,
              indicatorWeight: 4,
              tabs: [
                TabHome(
                  textTab: "Home",
                  iconTab: Icons.home,
                ),
                TabHome(
                  textTab: "Feed",
                  iconTab: Icons.list,
                ),
                TabHome(
                  textTab: "Profile",
                  iconTab: Icons.person,
                ),
                TabHome(
                  textTab: "Setting",
                  iconTab: Icons.settings,
                ),
              ]),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
              gradient: LinearGradient(
                  colors: [Colors.pink, Colors.blue],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight),
            ),
          ),
        ),
        body: const Center(
          child: TabBarView(children: [Home(), Feed(), Profile(), Settings()]),
        ),
      ),
    );
  }
}
