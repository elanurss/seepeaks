import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_moda_app/core/constants/extension/context_extension.dart';
import 'package:flutter_moda_app/view/auth/password_Forgot/view/userPassword_Forgot.dart';
import 'package:flutter_moda_app/view/auth/register/view/signup.dart';
import '../../../../widget/background_widget.dart';
import '../../../profile/view/profile_screen.dart';

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

  void _next() {
    Navigator.push(
        context, CupertinoPageRoute(builder: (context) => LoginHomeUser()));
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
                  buildTopText(context),
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
                        style: context.textTheme.caption!.copyWith(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
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
                            await ProfilePage(
                              onnext: _next,
                            );
                            //await ProfilePage(_emailController.text,_passwordController.text);
                          },
                          child: Text(
                            "Kullanıcı Girişi",
                            textAlign: TextAlign.center,
                            style: context.textTheme.subtitle1!.copyWith(
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ),
                      )),
                  buildBottomRowText(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Row buildBottomRowText(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Hesabın yok mu?",
          style: context.textTheme.subtitle1!
              .copyWith(fontWeight: FontWeight.w300, color: Colors.black),
        ),
        // ignore: deprecated_member_use
        TextButton(
          child: Text(
            "Kaydol",
            textAlign: TextAlign.start,
            style: context.textTheme.subtitle1!.copyWith(
                fontWeight: FontWeight.w400,
                color: Colors.purple.withOpacity(0.7)),
          ),
          onPressed: () async {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SignUpHome()));
          },
        ),
      ],
    );
  }

  Text buildTopText(BuildContext context) {
    return Text(
      "SEEPEAKS",
      style: context.textTheme.subtitle1!.copyWith(
        fontWeight: FontWeight.w400,
        color: Colors.black54.withOpacity(0.7),
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
        validator: (girilenVeri) {
          if (!girilenVeri!.contains('@') || !girilenVeri.contains('.com')) {
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
