import 'package:flutter/material.dart';

class UserPassordRefresh extends StatefulWidget {
  @override
  _UserPassordRefresh createState() => _UserPassordRefresh();
}

class _UserPassordRefresh extends State<UserPassordRefresh> {
  TextEditingController _oldpassword = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password_confirmation = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black54.withOpacity(0.9),
        title: Text(
          "Şifre yenile",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 40.0),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "E-posta adresinizi ve eski şifrenizi girerek yeniden şifre oluşturabilirsiniz!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.grey,
                            fontStyle: FontStyle.normal,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        controller: _email,
                        obscureText: false,
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          prefixIcon: Icon(Icons.email),
                          hintText: "E-posta:",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        controller: _oldpassword,
                        obscureText: false,
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          prefixIcon: Icon(Icons.vpn_key),
                          hintText: "Eski şifre:",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        controller: _password,
                        obscureText: false,
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          prefixIcon: Icon(Icons.vpn_key),
                          hintText: "Yeni şifre:",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        controller: _password_confirmation,
                        obscureText: false,
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          prefixIcon: Icon(Icons.vpn_key),
                          hintText: "Yeni şifre tekrar:",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 200.0,
                      height: 50.0,
                      child: Material(
                        elevation: 1.0,
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.black54.withOpacity(0.4),
                        child: MaterialButton(
                          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          onPressed: () {
                            // postUser(
                            //     email: _email.text,
                            //     old_password: _oldpassword.text,
                            //     password: _password.text,
                            //     password_confirmation:
                            //         _password_confirmation.text);
                          },
                          child: Text(
                            "Yenile",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontStyle: FontStyle.normal,
                                fontFamily: "Mali-LightItalic",
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
