import 'package:flutter/material.dart';
import 'package:kurirapp/Screens/Explore/explore_screen.dart';
import 'package:kurirapp/Screens/Homepage/homepage_screen.dart';
import 'package:kurirapp/Screens/Order/order_screen.dart';
import 'package:kurirapp/Screens/Profile/profile_screen.dart';
import 'package:kurirapp/constants.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTab = 0;
  List<Widget> pages;
  Widget currentPage;
  HomepageScreen homepageScreen;
  ExploreScreen exploreScreen;
  OrderScreen orderScreen;
  ProfileScreen profileScreen;

  @override
  void initState() {
    homepageScreen = HomepageScreen();
    exploreScreen = ExploreScreen();
    orderScreen = OrderScreen();
    profileScreen = ProfileScreen();

    pages = [homepageScreen, exploreScreen, orderScreen, profileScreen];

    currentPage = homepageScreen;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: this.currentPage,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: this.currentTab,
          onTap: (index) {
            setState(() {
              this.currentTab = index;
              this.currentPage = this.pages[index];
            });
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: kPrimaryColor,
          unselectedItemColor: kPrimaryColor,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.w800),
          backgroundColor: kBackgroundColor,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.explore,
              ),
              title: Text("Explore"),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
              ),
              title: Text("Orders"),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              title: Text("Profile"),
            ),
          ]),
    );
  }
}
