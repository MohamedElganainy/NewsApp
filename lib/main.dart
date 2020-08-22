import 'package:flutter/material.dart';
import 'package:news_app/screens/welcomescreen.dart';
import 'package:news_app/utilities/app-theme.dart';
import 'package:news_app/screens/splash-screen.dart';
void main()  {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme,
      home: SplashScreen(),
    );
  }
}
