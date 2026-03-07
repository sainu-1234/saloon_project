import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saloon_project/controller/bottom_navbar_screen_controller/bottom_navbar_screen_controller.dart';
import 'package:saloon_project/utils/app_utils.dart';
import 'package:saloon_project/view/Booking_screen/booking_screen.dart';
import 'package:saloon_project/view/Favourites_Screen/favourite_screen.dart';
import 'package:saloon_project/view/Home_screen/home_screen.dart';
import 'package:saloon_project/view/Profile_screen/profile_screen.dart';


class BottomNavigationScreen extends StatelessWidget {
  const BottomNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final navProvider = Provider.of<BottomNavProvider>(context);

    List<Widget> screenlist = [
      HomeScreen(),
      BookingScreen(),
      FavouriteScreen(),
      ProfileScreen(),
    ];

    return Scaffold(
      body: screenlist[navProvider.currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navProvider.currentIndex,
        selectedItemColor: ColorUtils.blue,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        

        onTap: (value) {
          navProvider.changeIndex(value);
        },

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined),
            activeIcon: Icon(Icons.calendar_month),
            label: "Bookings",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            activeIcon: Icon(Icons.favorite),
            label: "Favorites",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            activeIcon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}