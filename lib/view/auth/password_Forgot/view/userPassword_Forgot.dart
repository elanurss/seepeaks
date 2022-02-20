import 'package:flutter/material.dart';
import 'package:flutter_moda_app/core/constants/extension/context_extension.dart';
import 'package:flutter_moda_app/view/auth/register/view/signup.dart';
import '../../../../../widget/background_widget.dart';

class UserPasswordForgot extends StatefulWidget {
  @override
  _UserPasswordForgot createState() => _UserPasswordForgot();
}

class _UserPasswordForgot extends State<UserPasswordForgot> {
  TextEditingController _email = TextEditingController();

  @override
  void initState() {
    super.initState();
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
                    buildTopText(context),
                    SizedBox(height: 30.0),
                    Text(
                      "Giriş Yaparken Sorun Mu Yaşıyorsun? \n E-posta adresini gir ve hesabına yeniden girebilmen için sana bir bağlantı gönderelim.",
                      textAlign: TextAlign.center,
                      style: context.textTheme.headline6!.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Colors.grey[500],
                      ),
                    ),
                    SizedBox(height: 30.0),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      controller: _email,
                      obscureText: false,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        prefixIcon: Icon(Icons.email),
                        hintText: "E-posta",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2.0)),
                      ),
                    ),
                    SizedBox(height: 30.0),
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
                            // postUser(email: _email.text);
                          },
                          child: Text(
                            "Gönder",
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
                    SizedBox(height: 10.0),
                    Text(
                      "-YA DA-",
                      textAlign: TextAlign.center,
                      style: context.textTheme.subtitle1!.copyWith(
                        fontWeight: FontWeight.w300,
                        color: Colors.black54.withOpacity(0.7),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      // ignore: deprecated_member_use
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpHome()));
                        },
                        child: Text(
                          "Yeni hesap oluştur",
                          style: TextStyle(
                              color: Colors.black54,
                              fontFamily: "Kurale-Regular",
                              fontStyle: FontStyle.italic,
                              fontSize: 16),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
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
}
