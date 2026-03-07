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

    final items = [
      {"icon": Icons.home, "label": "Home"},
      {"icon": Icons.calendar_month, "label": "Bookings"},
      {"icon": Icons.favorite, "label": "Favorites"},
      {"icon": Icons.person, "label": "Profile"},
    ];

    return Scaffold(
      extendBody: true,

      body: Padding(
        padding: const EdgeInsets.only(bottom: 60),
        child: screenlist[navProvider.currentIndex],
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 6),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: const [
              BoxShadow(color: Colors.black12, blurRadius: 15, spreadRadius: 2),
            ],
          ),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(items.length, (index) {
              final isSelected = navProvider.currentIndex == index;

              return Expanded(
                child: GestureDetector(
                  onTap: () {
                    navProvider.changeIndex(index);
                  },

                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 250),
                    padding: const EdgeInsets.symmetric(
                      vertical: 6,
                      horizontal: 6,
                    ),

                    decoration: BoxDecoration(
                      color: isSelected
                          ? ColorUtils.blue.withValues(alpha: 0.15)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(30),
                    ),

                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          items[index]["icon"] as IconData,
                          size: 22,
                          color: isSelected ? ColorUtils.blue : Colors.grey,
                        ),

                        if (isSelected) ...[
                          Text(
                            items[index]["label"] as String,
                            style: TextStyle(
                              fontSize: 11,
                              color: ColorUtils.blue,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
