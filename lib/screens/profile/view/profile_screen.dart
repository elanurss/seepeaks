import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePage extends StatefulWidget {
  final Function onnext;
  static String routeName = 'CompleteProfileScreen';
  const ProfilePage({
    Key key,
    this.onnext,
  }) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Future<void> close() async {
    Navigator.of(context, rootNavigator: true).pop();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50].withOpacity(0.9),
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.9),
        title: Text(
          "Profil",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        // ACTIONS KISMININ SADECE KAYITLI PROFİL HESABI OLANLARDA GÖRÜNECEK!!!
        // actions: <Widget>[
        //   IconButton(
        //     icon: Icon(
        //       Icons.vpn_key_outlined,
        //       color: Colors.white,
        //     ),
        //     onPressed: () async {
        //       Navigator.push(
        //           context,
        //           MaterialPageRoute(
        //               builder: (context) => UserPassordRefresh()));
        //     },
        //   ),
        //   IconButton(
        //     icon: Icon(
        //       Icons.exit_to_app,
        //       color: Colors.white,
        //     ),
        //     onPressed: () async {},
        //   )
        // ],
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.transparent,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: double.infinity,
                  child: Center(
                    child: Bounce(
                      onPressed: () => widget.onnext(),
                      duration: Duration(milliseconds: 150),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 140),
                          SvgPicture.asset(
                            "assets/images/profil.svg",
                            width: MediaQuery.of(context).size.width * .5,
                          ),
                          SizedBox(height: 20),
                          Text("Giriş yapmak veya kayıt olmak için dokunun.",
                              style: Theme.of(context).textTheme.subtitle2),
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
