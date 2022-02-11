import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'design/splash_view.dart';

void main() {
  runApp(const Seepeaks());
}

class Seepeaks extends StatelessWidget {
  const Seepeaks({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SEEPEAKS',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashView(),
    );
  }
}
