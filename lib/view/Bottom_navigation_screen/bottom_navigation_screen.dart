import 'package:flutter/material.dart';
import 'package:saloon_project/view/Booking_screen/booking_screen.dart';
import 'package:saloon_project/view/Favourites_Screen/favourite_screen.dart';
import 'package:saloon_project/view/Home_screen/home_screen.dart';
import 'package:saloon_project/view/Profile_screen/profile_screen.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int navigateindex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> screenlist = [
      HomeScreen(),
      BookingScreen(),
      FavouriteScreen(),
      ProfileScreen(),
    ];
    return Scaffold(
      body: screenlist[navigateindex],
      bottomNavigationBar: StylishBottomBar(
        items: [
          BottomBarItem(
            icon: Icon(Icons.home_outlined),
            title: Text("Home"),
            selectedIcon: Icon(Icons.home),
          ),
          BottomBarItem(
            icon: Icon(Icons.calendar_month_outlined),
            title: Text("Bookings"),
            selectedIcon: Icon(Icons.calendar_month),
          ),
          BottomBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text("Favortes"),
            selectedIcon: Icon(Icons.favorite),
          ),
          BottomBarItem(
            icon: Icon(Icons.person_2_outlined),
            title: Text("Profile"),
            selectedIcon: Icon(Icons.person),
          ),
        ],
        option: AnimatedBarOptions(
          iconSize: 30,
          barAnimation: BarAnimation.fade,
          iconStyle: IconStyle.animated,
        ),
        hasNotch: true,
        // fabLocation: StylishBarFabLocation.center,
        borderRadius: BorderRadius.circular(15),
        currentIndex: navigateindex,
        onTap: (value) {
          navigateindex = value;
          setState(() {});
        },
      ),
    );
  }
}
