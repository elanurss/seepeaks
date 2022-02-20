import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_moda_app/core/bottom_bar/view/bottombar.dart';
import 'package:flutter_moda_app/view/auth/login/view/userLogin.dart';
import 'package:flutter_moda_app/view/home/view/favorites.dart';
import 'package:flutter_moda_app/view/home/view/home_view.dart';
import 'package:flutter_moda_app/view/profile/view/profile_screen.dart';
import 'package:iconsax/iconsax.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  void _next() {
    Navigator.push(
        context, CupertinoPageRoute(builder: (context) => LoginHomeUser()));
  }

  int _bottomNavIndex = 0;
  List<GlobalKey<NavigatorState>> _navigatorKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>()
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final isFirstRouteInCurrentTab =
            !await _navigatorKeys[_bottomNavIndex].currentState!.maybePop();
        print(
            'isFirstRouteInCurrentTab: ' + isFirstRouteInCurrentTab.toString());
        return isFirstRouteInCurrentTab;
      },
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          splashColor: Colors.white,
          hoverColor: Colors.white,
          backgroundColor: Colors.white12.withOpacity(0.9),
          child: Icon(
            Icons.favorite,
            size: 30,
            color: Colors.red.withOpacity(0.9),
          ),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Favorites()));
          },
        ),
        bottomNavigationBar: AnimatedBottomNavigationBar(
          splashColor: Colors.purple.withOpacity(0.4),
          icons: [Iconsax.home_2, Iconsax.user],
          activeIndex: _bottomNavIndex,
          activeColor: Colors.purple.withOpacity(0.4),
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.verySmoothEdge,
          leftCornerRadius: 32,
          rightCornerRadius: 32,
          onTap: (index) => setState(() => _bottomNavIndex = index),
        ),
        body: CommonBottomNavigationBar(
          selectedIndex: _bottomNavIndex,
          navigatorKeys: _navigatorKeys,
          childrens: [
            HomeView(),
            ProfilePage(
              onnext: _next,
            )
          ],
        ),
      ),
    );
  }

  Map<String, WidgetBuilder> _routeBuilders(BuildContext context, int index) {
    return {
      '/': (context) {
        return [
          HomeView(),
          ProfilePage(
            onnext: _next,
          ),
        ].elementAt(index);
      },
    };
  }

  // ignore: unused_element
  Widget _buildOffstageNavigator(int index) {
    var routeBuilders = _routeBuilders(context, index);
    return Offstage(
      offstage: _bottomNavIndex != index,
      child: Navigator(
        key: _navigatorKeys[index],
        onGenerateRoute: (routeSettings) {
          return MaterialPageRoute(
            builder: (context) => routeBuilders[routeSettings.name]!(context),
          );
        },
      ),
    );
  }
}
