import 'dart:async';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_moda_app/view/bottomNavigationBar/bottomNavigationBar.dart';

class SplashView extends StatefulWidget {
  @override
  _SplashView createState() => _SplashView();
}

class _SplashView extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(new Duration(seconds: 3), () async {
      await Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
              builder: (BuildContext context) => BottomNavigation()),
          (Route<dynamic> route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.black,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/seepeaks.jpeg',
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 45,
                              child: Icon(
                                Icons.favorite,
                                color: Colors.white,
                                size: 33,
                              ),
                            ),
                            SizedBox(
                              height: 45,
                              child: Icon(
                                Icons.thumb_up,
                                color: Colors.white,
                                size: 33,
                              ),
                            ),
                            SizedBox(
                              height: 45,
                              child: Icon(
                                Icons.storefront,
                                color: Colors.white,
                                size: 33,
                              ),
                            ),
                            SizedBox(
                              height: 45,
                              child: Icon(
                                Icons.bookmark,
                                color: Colors.white,
                                size: 33,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 45,
                                width: MediaQuery.of(context).size.width / 1.3,
                                child: AutoSizeText(
                                  " Arad??????n t??m ??r??nleri kolayca bul",
                                  maxFontSize: 14,
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      color: Colors.white,
                                      fontSize: 14,
                                      letterSpacing: 0.1),
                                ),
                              ),
                              SizedBox(
                                height: 45,
                                width: MediaQuery.of(context).size.width / 1.3,
                                child: AutoSizeText(
                                  " Takip etti??in t??m i??erik ??reticileri burada",
                                  maxFontSize: 14,
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      color: Colors.white,
                                      fontSize: 14,
                                      letterSpacing: 0.1),
                                ),
                              ),
                              SizedBox(
                                height: 45,
                                width: MediaQuery.of(context).size.width / 1.3,
                                child: AutoSizeText(
                                  " Favori ma??azalar??n??n indirimlerini  ka????rma ",
                                  maxFontSize: 14,
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      color: Colors.white,
                                      fontSize: 14,
                                      letterSpacing: 0.1),
                                ),
                              ),
                              SizedBox(
                                height: 16,
                                width: MediaQuery.of(context).size.width / 1.3,
                                child: AutoSizeText(
                                  " Takip etti??in i??erik ??reticileri de??erlendir",
                                  maxFontSize: 15,
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontSize: 14,
                                      color: Colors.white,
                                      letterSpacing: 0.1),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
