import 'package:flutter/material.dart';
import 'package:saloon_project/view/Bottom_navigation_screen/bottom_navigation_screen.dart';
import 'package:saloon_project/view/Home_screen/home_screen.dart';
import 'package:saloon_project/view/Saloon_detailes_screen/saloon_detailes_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigationScreen(),
    );
  }
}
