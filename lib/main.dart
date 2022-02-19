import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'design/constants/navigation/navigation_constants.dart';
import 'design/init/navigation/navigation_route.dart';
import 'design/theme/app_theme_light.dart';

void main() {
  runApp(const Seepeaks());
}

class Seepeaks extends StatelessWidget {
  const Seepeaks({Key key}) : super(key: key);

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
