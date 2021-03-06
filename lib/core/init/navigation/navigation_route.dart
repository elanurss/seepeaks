import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_moda_app/core/card/not_found_navigation.dart';
import 'package:flutter_moda_app/core/splash_view/view/splash_view.dart';
import 'package:flutter_moda_app/view/auth/login/view/userLogin.dart';
import 'package:flutter_moda_app/view/home/view/home_view.dart';
import 'package:flutter_moda_app/view/profile/view/profile_screen.dart';
import '../../constants/navigation/navigation_constants.dart';

class NavigationRoute {
  static NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance;
  NavigationRoute._init();

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstants.SPLASH_VIEW:
        return normalNavigate(SplashView());
      case NavigationConstants.LOGIN_VIEW:
        return normalNavigate(LoginHomeUser());
      case NavigationConstants.HOME_VIEW:
        return normalNavigate(HomeView());
      case NavigationConstants.HOME_DETAIL:
        throw Error();
      case NavigationConstants.USER_PROFILE:
        return normalNavigate(ProfilePage(onnext: _next));
      default:
        return MaterialPageRoute(builder: (context) => NotFoundNavigation());
    }
  }

  void _next(context) {
    Navigator.push(
        context, CupertinoPageRoute(builder: (context) => LoginHomeUser()));
  }

  MaterialPageRoute normalNavigate(Widget widget) =>
      MaterialPageRoute(builder: (context) => widget);
}
