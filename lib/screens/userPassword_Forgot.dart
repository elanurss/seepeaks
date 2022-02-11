import 'package:flutter/material.dart';
import 'signup.dart';
import '../widget/background_widget.dart';

// ignore: must_be_immutable
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
                    Text(
                      "SEEPEAKS",
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 30.0),
                    Text(
                      "Giriş Yaparken Sorun Mu Yaşıyorsun? \n E-posta adresini gir ve hesabına yeniden girebilmen için sana bir bağlantı gönderelim.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey[500],
                          fontStyle: FontStyle.normal,
                          fontFamily: "Merienda-Regular.ttf",
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold),
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
                        color: Colors.purple.withOpacity(0.4),
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
                      style: TextStyle(
                          color: Colors.grey,
                          fontStyle: FontStyle.normal,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500),
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
}
