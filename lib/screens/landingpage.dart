import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import 'home.dart';
import 'cart.dart';
import 'profile.dart';

class MainScr extends StatefulWidget {
  @override
  _MainScrState createState() => _MainScrState();
}

class _MainScrState extends State<MainScr> {
  PersistentTabController _controller;

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: _controller.index==0 ?
        CircleAvatar(
          radius: 18,
          backgroundColor: Theme.of(context).primaryColor,
          child: ImageIcon(AssetImage('assets/Icon feather-home@2x.png'),size: 18,color: Colors.white),
        )
        : ImageIcon(AssetImage('assets/Icon feather-home@2x.png'),size: 18),
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: Color(0xFFA5A5A5),
      ),
      PersistentBottomNavBarItem(
        icon: _controller.index == 1 ?
        CircleAvatar(
          radius: 18,
          backgroundColor: Theme.of(context).primaryColor,
          child: ImageIcon(AssetImage('assets/Icon feather-shopping-cart@2x.png'),size: 18, color: Colors.white),
        ) : ImageIcon(AssetImage('assets/Icon feather-shopping-cart@2x.png'),size: 18),
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: Color(0xFFA5A5A5),
      ),
      PersistentBottomNavBarItem(
        icon: _controller.index == 2 ?
        CircleAvatar(
          radius: 18,
          backgroundColor: Theme.of(context).primaryColor,
          child: ImageIcon(AssetImage('assets/Icon feather-clipboard@2x.png'),size: 18, color: Colors.white),
        ) : ImageIcon(AssetImage('assets/Icon feather-clipboard@2x.png'),size: 18),
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: Color(0xFFA5A5A5),
      ),
      PersistentBottomNavBarItem(
        icon: _controller.index == 3 ?
        CircleAvatar(
          radius: 18,
          backgroundColor: Theme.of(context).primaryColor,
          child: ImageIcon(AssetImage('assets/Icon feather-user@2x.png'),size: 18, color: Colors.white),
        ) : ImageIcon(AssetImage('assets/Icon feather-user@2x.png'),size: 18),
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: Color(0xFFA5A5A5),
      )
    ];
  }

  List<Widget> _buildScreens() {
    return [
      HomeScr(),
      CartScr(),
      HomeScr(),
      ProfileScr(),
    ];
  }

  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      items: _navBarsItems(),
      navBarHeight: ScreenUtil().setHeight(80.0),
      screens: _buildScreens(),
      onItemSelected: (i){
        setState(() {});
      },
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.once,
      itemAnimationProperties: ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style6,
    );
  }
}
