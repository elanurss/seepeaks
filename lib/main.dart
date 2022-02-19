import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_moda_app/design/init/theme/app_theme_light.dart';
import 'design/constants/navigation/navigation_constants.dart';
import 'design/init/navigation/navigation_route.dart';

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
