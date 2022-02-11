import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_moda_app/widget/background_widget.dart';

// ignore: must_be_immutable
class SignUpHome extends StatefulWidget {
  @override
  _SignUpHomeState createState() => _SignUpHomeState();
}

class _SignUpHomeState extends State<SignUpHome> {
  @override
// ignore: must_call_super
  void initState() {
    setState(() {});
    super.initState();
  }

  // ignore: non_constant_identifier_names
  TextEditingController _kul_email = TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController _kul_password = TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController _kul_ad = TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController _kul_password2 = TextEditingController();

  passwordControl(String pass1, String pass2) {
    if (pass1 != pass2) {
      return false;
    } else {
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Background(
            child: Center(
                child: Container(
                    child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                SizedBox(height: 30.0),
                Text(
                  "SEEPEAKS",
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    buildKullaniciName(),
                    SizedBox(height: 10.0),
                    Form(
                      autovalidateMode: AutovalidateMode.always,
                      child: buildKullaniciMail(),
                    ),
                    SizedBox(height: 10.0),
                    Form(
                      autovalidateMode: AutovalidateMode.always,
                      child: buildKullaniciPassword(),
                    ),
                    SizedBox(height: 10.0),
                    buildKullaniciRPassword(),
                    SizedBox(height: 40),
                    SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 50.0,
                        child: Material(
                          elevation: 3.0,
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.purple.withOpacity(0.4),
                          child: MaterialButton(
                            padding:
                                EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                            onPressed: () async {
                              bool info = passwordControl(
                                  _kul_password.text, _kul_password2.text);

                              if (info) {
                                // await postUser(
                                //   fullname: _kul_ad.text,
                                //   email: _kul_email.text,
                                //   telephone: _kul_telefon.text,
                                //   password: _kul_password.text,
                                // );
                              } else {
                                showAlertDialog();
                              }
                            },
                            child: Text(
                              "Kayıt Ol",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )),
                  ],
                ),
              ])),
        )))));
  }

  Container buildIconField(IconData icon, BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          gradient: LinearGradient(colors: [
            Colors.black.withOpacity(0.4),
            Colors.purple.withOpacity(0.4)
          ])),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }

  TextField buildKullaniciRPassword() {
    return TextField(
      controller: _kul_password2,
      obscureText: _isHidden5,
      decoration: InputDecoration(
        suffix: InkWell(
          onTap: _togglePasswordView5,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              _isHidden5 ? Icons.visibility : Icons.visibility_off,
              color: Colors.grey[600],
            ),
          ),
        ),
        contentPadding: EdgeInsets.only(left: 10),
        labelText: "Şifre Tekrar",
        icon: buildIconField(Icons.lock, context),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }

  bool _isHidden4 = true;
  void _togglePasswordView() {
    setState(() {
      _isHidden4 = !_isHidden4;
    });
  }

  bool _isHidden5 = true;
  void _togglePasswordView5() {
    setState(() {
      _isHidden5 = !_isHidden5;
    });
  }

  TextFormField buildKullaniciPassword() {
    return TextFormField(
        controller: _kul_password,
        obscureText: _isHidden4,
        decoration: InputDecoration(
          suffix: InkWell(
            onTap: _togglePasswordView,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                _isHidden4 ? Icons.visibility : Icons.visibility_off,
                color: Colors.grey[600],
              ),
            ),
          ),
          contentPadding: EdgeInsets.only(left: 10),
          labelText: "Şifre ",
          icon: buildIconField(Icons.lock, context),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        validator: (String girilenVeri) {
          if (girilenVeri.length < 6) {
            return "En az 6 karakter giriniz!";
          } else
            return null;
        });
  }

  TextFormField buildKullaniciMail() {
    return TextFormField(
        keyboardType: TextInputType.emailAddress,
        maxLength: 35,
        obscureText: false,
        controller: _kul_email,
        decoration: InputDecoration(
          counterText: '',
          contentPadding: EdgeInsets.only(left: 10),
          labelText: "E-posta ",
          icon: buildIconField(Icons.mail, context),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        validator: (String girilenVeri) {
          if (!girilenVeri.contains('@') || !girilenVeri.contains('.com')) {
            return "Geçersiz email";
          } else
            return null;
        });
  }

  TextField buildKullaniciName() {
    return TextField(
      controller: _kul_ad,
      obscureText: false,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 10),
        labelText: "Ad-Soyad ",
        icon: buildIconField(Icons.person, context),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }

  Future<void> showAlertDialog() async {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            title: Center(
              child: Text(
                'Uyarı!',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.orange,
                ),
              ),
            ),
            content: Text(
              'Şifreler farklı!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black87,
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Kapat"))
            ],
          );
        });
  }
}
