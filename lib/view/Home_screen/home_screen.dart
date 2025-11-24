import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:saloon_project/utils/color_utils.dart';
import 'package:saloon_project/view/Saloon_detailes_screen/saloon_detailes_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // TOP FIXED SECTION
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              spacing: 20,
              children: [
                SizedBox(height: 20),
                _buildLocationHeader(), // location

                TextField(
                  decoration: InputDecoration(
                    hintText: "Enter address or city name",
                    prefixIcon: Icon(Icons.search),
                    filled: true,
                    fillColor: Colors.grey.withValues(alpha: 0.2),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          // SCROLLABLE SECTION
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              children: [
                // CAROUSEL
                CarouselSlider.builder(
                  options: CarouselOptions(
                    height: 150,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    viewportFraction: 0.9,
                  ),
                  itemCount: ColorUtils.myColorlist.length,
                  itemBuilder: (context, index, _) {
                    return Container(
                      decoration: BoxDecoration(
                        color: ColorUtils.myColorlist[index],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    );
                  },
                ),

                const SizedBox(height: 20),

                Text(
                  "Services",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                const SizedBox(height: 10),
                // tabbar here
                _buildTabbar(),

                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Text(
                //       "Nearby Salons",
                //       style: TextStyle(
                //         fontWeight: FontWeight.bold,
                //         fontSize: 20,
                //       ),
                //     ),
                //     Text(
                //       "View On Map",
                //       style: TextStyle(
                //         fontWeight: FontWeight.bold,
                //         fontSize: 17,
                //         color: Colors.blue,
                //       ),
                //     ),
                //   ],
                // ),
                // const SizedBox(height: 10),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) =>
                      _buildSalonCard(index), // card section
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // LOCATION
  Widget _buildLocationHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.location_on_outlined, color: Colors.blue, size: 25),

            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Location",
                  style: TextStyle(color: Colors.grey.shade500, fontSize: 14),
                ),

                Row(
                  children: [
                    Text(
                      "Perinthalmanna",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    Icon(Icons.keyboard_arrow_down_rounded, size: 22),
                  ],
                ),
              ],
            ),
          ],
        ),

        Stack(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Icon(Icons.notifications_none_rounded, size: 26),
            ),

            // RED ALERT DOT
            Positioned(
              right: 6,
              top: 6,
              child: Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  //  SALON CARD
  Widget _buildSalonCard(int index) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SaloonDetailesScreen()),
        );
      },
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 12),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 10,
              spreadRadius: 2,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                SaloonDataUtils.listelements[index]["photo"],
                width: 95,
                height: 95,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 12),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          SaloonDataUtils.listelements[index]["name"],
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Text(
                        SaloonDataUtils.listelements[index]["distance"],
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                    ],
                  ),

                  const SizedBox(height: 6),

                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 18,
                        color: Colors.grey.shade500,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        SaloonDataUtils.listelements[index]["location"],
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 8),

                  Row(
                    children: [
                      Icon(Icons.star, size: 20, color: Colors.amber),
                      const SizedBox(width: 4),
                      Text(
                        SaloonDataUtils.listelements[index]["rating"],
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        SaloonDataUtils.listelements[index]["reviewcount"],
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // TAB BAR
  Widget _buildTabbar() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(TabBarUtils.myTabs.length, (index) {
          bool isSelected = currentIndex == index;

          return InkWell(
            onTap: () {
              setState(() => currentIndex = index);
            },
            child: Container(
              margin: EdgeInsets.only(right: 8),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 012),
              decoration: BoxDecoration(
                color: isSelected
                    ? ColorUtils.blue
                    : Colors.grey.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Icon(
                    TabBarUtils.myTabs[index]['icon'],
                    color: isSelected ? Colors.white : ColorUtils.blue,
                  ),
                  SizedBox(width: 6),
                  Text(
                    TabBarUtils.myTabs[index]['title'],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: isSelected ? Colors.white : ColorUtils.blue,
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
