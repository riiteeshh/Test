import 'package:assinment/homepage.dart';
import 'package:assinment/sources/clickabletext.dart';
import 'package:assinment/sources/loginform.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'sources/logo.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/homepage': (context) => HomePage(),
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xEFFEEBEC),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 37, left: 15),
                child: const LogoImage(
                  size: 48,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Hello\tthere !',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.black,
                      fontFamily: 'BowlbyOne',
                      fontStyle: FontStyle.normal),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Welcome to Meguri Wallet.Get started to use the app by logging in to the app.',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: Colors.black,
                      fontStyle: FontStyle.italic),
                ),
              ),
              LoginForm(),
              Row(
                children: [
                  Container(
                    height: 20,
                    margin: EdgeInsets.only(top: 15, left: 50),
                    child: (defaultTargetPlatform == TargetPlatform.iOS)
                        ? Icon(
                            Icons.face_rounded,
                            color: Color.fromARGB(255, 159, 14, 4),
                          )
                        : Icon(
                            Icons.fingerprint_rounded,
                            color: Color.fromARGB(255, 159, 14, 4),
                          ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.only(top: 20, left: 15),
                      child: (defaultTargetPlatform == TargetPlatform.iOS)
                          ? Text(
                              'Use FaceId to Authenticate',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontFamily: 'ChivoMono',
                                  fontStyle: FontStyle.normal),
                            )
                          : Text(
                              'Use Fingerprint to Authenticate',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontFamily: 'ChivoMono',
                                  fontStyle: FontStyle.normal),
                            ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30.0, left: 105),
                    child: Text(
                      'Not a member?',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 30.0, left: 5),
                      child: ClickableText(
                        text: 'Register',
                        color: Color.fromARGB(255, 159, 14, 4),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
