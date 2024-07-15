import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:govt_smart_library/screen/home_screen.dart';
import 'package:govt_smart_library/screen/profile_screen.dart';
import 'package:govt_smart_library/screen/wishlist_screen.dart';


class CustomBottomBar extends StatefulWidget {
  final int? intailindex;
  CustomBottomBar({this.intailindex});
  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int currentintex = 0;
  @override
  void initState() {
    super.initState();
    setState(() {
      currentintex = widget.intailindex ?? currentintex;
    });
  }

  static List<Widget> currentScreen = <Widget>[
    HomeScreen(),
    WishlistScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentScreen.elementAt(currentintex),
      bottomNavigationBar: Container(
        color: Theme.of(context).cardColor,
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        child: GNav(
            selectedIndex: currentintex,
            onTabChange: (index) {
              setState(() {
                currentintex = index;
              });
            },
            haptic: true,
            tabBorderRadius: 15,
            tabActiveBorder:
                Border.all(color: Theme.of(context).cardColor, width: 1),
            curve: Curves.easeOutExpo,
            duration: Duration(milliseconds: 200),
            gap: 8,
            color: Theme.of(context).primaryColor,
            activeColor: Theme.of(context).cardColor,
            iconSize: 24,
            tabBackgroundColor: Theme.of(context).primaryColor,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            tabs: [
              GButton(
                icon: Icons.home_outlined,
                text: 'Home',
              ),
              GButton(
                icon: Icons.favorite_border,
                text: 'Wishlist',
              ),
              GButton(
                icon: Icons.person_outline,
                text: 'Profile',
              ),
              
            ]),
      ),
    );
  }
}
