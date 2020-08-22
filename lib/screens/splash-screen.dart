import 'package:flutter/material.dart';
import 'dart:async';
import 'package:shimmer/shimmer.dart';
import 'package:news_app/screens/welcomescreen.dart';
import 'package:news_app/screens/homescreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    _mockCheckForSession().then((status) {
      if (status) {
        _navigateToHome();
      } else {
        _navigateToLogin();
      }
    });
  }

  Future<bool> _mockCheckForSession() async {
    await Future.delayed(Duration(milliseconds: 3000), () {});
    return true;
  }

  void _navigateToHome() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => WelcomeScreen()));
  }

  void _navigateToLogin() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            SizedBox(
              child: Image(
                image: ExactAssetImage("assets/images/pp2.png"), fit: BoxFit.cover,
              ),
              height: double.infinity,
              width: 300,
            ),
            Shimmer.fromColors(
              period: Duration(milliseconds: 1500),
              baseColor: Color(0xff7f00ff),
              highlightColor: Color(0xffe100ff),
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "news",
                  style: TextStyle(
                      fontSize: 90.0,
                      fontFamily: 'Pacifico',
                      shadows: <Shadow>[
                        Shadow(
                            blurRadius: 18.0,
                            color: Colors.black87,
                            offset: Offset.fromDirection(120, 12))
                      ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
