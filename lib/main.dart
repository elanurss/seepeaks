import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'core/constants/navigation/navigation_constants.dart';
import 'core/init/navigation/navigation_route.dart';
import 'core/init/theme/app_theme_light.dart';

void main() {
  runApp(Seepeaks());
}

class Seepeaks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SEEPEAKS APP',
      initialRoute: NavigationConstants.SPLASH_VIEW,
      onGenerateRoute: NavigationRoute.instance.generateRoute,
      theme: AppThemeLight.instance.theme,
    );
  }
}
