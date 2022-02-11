import 'package:flutter/material.dart';
import 'package:flutter_moda_app/screens/signup.dart';
import '../widget/background_widget.dart';
import 'profile_screen.dart';
import 'userPassword_Forgot.dart';

// ignore: must_be_immutable
class LoginHomeUser extends StatefulWidget {
  @override
  _LoginHomeUserState createState() => _LoginHomeUserState();
}

class _LoginHomeUserState extends State<LoginHomeUser> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _isHidden = true;

  @override
  void initState() {
    super.initState();
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Background(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 50.0),
                  Text(
                    "SEEPEAKS",
                    style: TextStyle(
                        color: Colors.black54.withOpacity(0.7),
                        fontFamily: "Montserrat",
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20.0),
                  Form(
                    autovalidateMode: AutovalidateMode.always,
                    child: buildEmailField(),
                  ),
                  SizedBox(height: 10.0),
                  buildPasswordField(),
                  Container(
                    alignment: Alignment.centerRight,
                    // ignore: deprecated_member_use
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UserPasswordForgot()));
                      },
                      padding: EdgeInsets.only(right: 0),
                      child: Text(
                        'Şifrenizi mi unuttunuz?',
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.normal,
                            fontSize: 13),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 50.0,
                      child: Material(
                        elevation: 3.0,
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.black54.withOpacity(0.4),
                        child: MaterialButton(
                          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          onPressed: () async {
                            await ProfilePage();
                            //await ProfilePage(_emailController.text,_passwordController.text);
                          },
                          child: Text(
                            "Kullanıcı Girişi",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Mali-LightItalic",
                                fontStyle: FontStyle.normal,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Hesabın yok mu?",
                        style: TextStyle(
                            color: Colors.black54,
                            fontFamily: "Kurale-Regular",
                            fontStyle: FontStyle.normal,
                            fontSize: 16),
                      ),

                      // ignore: deprecated_member_use
                      TextButton(
                        child: Text(
                          "Kaydol",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.purple.withOpacity(0.7),
                              fontFamily: "Kurale-Regular",
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        onPressed: () async {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpHome()));
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  TextField buildPasswordField() {
    return TextField(
      obscureText: _isHidden,
      controller: _passwordController,
      decoration: InputDecoration(
        suffix: InkWell(
          onTap: _togglePasswordView,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              _isHidden ? Icons.visibility : Icons.visibility_off,
              color: Colors.grey[600],
            ),
          ),
        ),
        contentPadding: EdgeInsets.only(left: 10),
        labelText: "Şifre",
        icon: buildIconField(Icons.lock, context),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }

  TextFormField buildEmailField() {
    return TextFormField(
        keyboardType: TextInputType.emailAddress,
        obscureText: false,
        controller: _emailController,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 10),
          labelText: "E-posta",
          icon: buildIconField(Icons.email, context),
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
}
