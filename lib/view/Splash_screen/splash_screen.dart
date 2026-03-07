import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:saloon_project/utils/app_utils.dart';
import 'package:saloon_project/view/Bottom_navigation_screen/bottom_navigation_screen.dart';
import 'package:saloon_project/view/Login_screen/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isSplash = true;
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2)).then((value) {
      isSplash = false;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (isSplash) {
      return Scaffold(
        backgroundColor: ColorUtils.blue,
        body: Center(
          child: Text(
            "SalonMate",

            style: TextStyle(
              fontSize: 35,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
    } else {
      return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasData) {
            return BottomNavigationScreen();
          } else {
            return LoginScreen();
          }
        },
      );
    }
  }
}
