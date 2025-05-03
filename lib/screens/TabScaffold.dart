import 'package:flutter/cupertino.dart';
import 'home_screen.dart';
import 'profile_screen.dart';

class TabScaffold extends StatelessWidget {
  const TabScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        backgroundColor: Color(0xFF000000),
        activeColor: CupertinoColors.white,
        inactiveColor: CupertinoColors.systemGrey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled),
            label: 'Profile',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return const HomeScreen();
          case 1:
            return const ProfileScreen();
          default:
            return const Center(child: Text("Unknown tab"));
        }
      },
    );
  }
}
