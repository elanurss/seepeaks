import 'package:flutter/material.dart';
import 'package:flutter_moda_app/design/card/not_found_navigation.dart';
import 'package:flutter_moda_app/design/splash_view/view/splash_view.dart';
import 'package:flutter_moda_app/screens/auth/login/view/userLogin.dart';
import 'package:flutter_moda_app/screens/home/view/home_view.dart';
import 'package:flutter_moda_app/screens/profile/view/profile_screen.dart';
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
        return normalNavigate(ProfilePage());
      default:
        return MaterialPageRoute(builder: (context) => NotFoundNavigation());
    }
  }

  MaterialPageRoute normalNavigate(Widget widget) =>
      MaterialPageRoute(builder: (context) => widget);
}
