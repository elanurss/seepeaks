import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:flutter_moda_app/design/constants.dart';
import 'package:flutter_moda_app/screens/userPassword_Refresh.dart';
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

  TextEditingController _kul_telefon = TextEditingController();
  TextEditingController _kul_ad = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50].withOpacity(0.9),
      appBar: AppBar(
        title: Text(
          "Profil",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.vpn_key_outlined,
              color: Colors.white,
            ),
            onPressed: () async {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => UserPassordRefresh()));
            },
          ),
          IconButton(
            icon: Icon(
              Icons.exit_to_app,
              color: Colors.white,
            ),
            onPressed: () async {},
          )
        ],
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.white60, Colors.purple])),
        ),
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

  TextField buildKullaniciPhone(String telefon) {
    _kul_telefon.text = telefon;
    return TextField(
      controller: _kul_telefon,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 10),
        labelText: "Telefon",
        hintText: "(05xx...)",
        prefixIcon: Icon(Icons.phone),
        counterText: '',
        icon: buildIconField(Icons.phone, context),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      keyboardType: TextInputType.number,
      maxLength: 11,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly
      ],
    );
  }

  TextField buildKullaniciName(String ad) {
    _kul_ad.text = ad;
    return TextField(
      controller: _kul_ad,
      obscureText: false,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 10),
        labelText: "Ad-Soyad ",
        prefixIcon: Icon(Icons.person),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }

  CircleAvatar buildCircleAvatar() {
    return CircleAvatar(
      backgroundColor: kPrimaryColor,
      child: Icon(
        Icons.person,
        size: 40,
        color: Colors.white,
      ),
      radius: 50,
    );
  }

  buildIconField(IconData phone, BuildContext context) {}
}
