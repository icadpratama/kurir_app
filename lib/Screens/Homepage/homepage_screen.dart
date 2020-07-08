import 'package:flutter/material.dart';
import 'package:kurirapp/Screens/Homepage/components/body.dart';
import 'package:kurirapp/Screens/Profile/profile_screen.dart';
import 'package:kurirapp/constants.dart';
import 'package:kurirapp/my_flutter_app_icons.dart';

class HomepageScreen extends StatefulWidget {
  @override
  _HomepageScreenState createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  int currentTab = 0;
  List<Widget> pages;
  Widget currentPage;
  HomepageScreen homepageScreen;
  ProfileScreen profileScreen;

  @override
  void initState() {
    profileScreen = ProfileScreen();
    homepageScreen = HomepageScreen();

    pages = [homepageScreen, profileScreen];

    currentPage = homepageScreen;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // int _currentIndex = 0;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0,
        iconTheme: IconThemeData(color: kPrimaryDark),
        title: const Text(
          'Deliver to',
          style: TextStyle(color: kPrimaryDark),
        ),
        leading: Container(
          child: Tab(
            icon: Icon(MyFlutterApp.th_large),
          ),
        ),
        actions: <Widget>[
          Container(
            child: IconButton(
              icon: const Icon(
                Icons.notifications,
                color: kPrimaryColor,
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
      body: Body(),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: this.currentTab,
          onTap: (index) {
            setState(() {
              currentTab = index;
              currentPage = pages[index];
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
