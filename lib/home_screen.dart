import 'package:flutter/material.dart';
import 'package:movies/explore/explore_tab.dart';
import 'package:movies/home/home_tab.dart';
import 'package:movies/profile/profile_tab.dart';
import 'package:movies/search/search_tab.dart';
import 'package:movies/widgets/nav_bar_icon.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int currentIndex = 0;
List<Widget> tabs = [
  HomeTab(),
  SearchTab(),
  ExploreTab(),
  ProfileTab(),
];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (value) {
              currentIndex = value;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                icon: NavBarIcon(imageName: "home_selected"),
                activeIcon: NavBarIcon(imageName: "home_unselected"),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: NavBarIcon(imageName: "search_selected"),
                activeIcon: NavBarIcon(imageName: "search_unselected"),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: NavBarIcon(imageName: "explore_selected"),
                activeIcon: NavBarIcon(imageName: "explore_unselected"),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: NavBarIcon(imageName: "profile_selected"),
                activeIcon: NavBarIcon(imageName: "profile_unselected"),
                label: "",
              ),
            ],
          ),
        ),
      ),
      body: tabs[currentIndex],
    );
  }
}
