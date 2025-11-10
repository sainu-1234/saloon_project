import 'package:flutter/material.dart';
import 'package:saloon_project/view/login_screen.dart';
import 'package:saloon_project/view/otp_screen.dart';
import 'package:saloon_project/view/register_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterScreen(),
    );
  }
}

// abdu from kuruvambalam
