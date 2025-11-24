import 'package:carousel_slider/carousel_slider.dart'
    show CarouselOptions, CarouselSlider;
import 'package:flutter/material.dart';
import 'package:saloon_project/utils/color_utils.dart';

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 16),
        child: Column(
          spacing: 15,
          children: [
            ListTile(
              leading: Icon(Icons.location_on_outlined, color: Colors.blue),
              title: Text("Location", style: TextStyle(fontSize: 20)),
              subtitle: Text(
                "Malappuram, Perinthalmanna",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              trailing: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(77, 212, 207, 207),
                ),
                child: Icon(Icons.notification_important_rounded),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Enter address or city name",
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey.shade200,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            CarouselSlider.builder(
              options: CarouselOptions(
                height: 150,
                pauseAutoPlayOnTouch: true,
                pauseAutoPlayOnManualNavigate: true,
                enlargeCenterPage: true,
                aspectRatio: 10 / 10,
                viewportFraction: 0.9,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 5),
                autoPlayAnimationDuration: Duration(seconds: 1),
                autoPlayCurve: Curves.ease,

                enlargeFactor: 0.3,
                scrollDirection: Axis.horizontal,
              ),
              itemCount: ColorUtils.myColorlist.length,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      Container(
                        decoration: BoxDecoration(
                          color: ColorUtils.myColorlist[itemIndex],
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
            ),
            Row(
              children: [
                Text(
                  "Services",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ],
            ),
            // tabbar here
            _buildTabbar(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Nearby Salons",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: const Color.fromARGB(255, 10, 10, 10),
                  ),
                ),
                Text(
                  "View On Map",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: const Color.fromARGB(255, 47, 47, 245),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabbar() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(TabBarUtils.myTabs.length, (index) {
          bool isSelected = currentIndex == index;

          return InkWell(
            onTap: () {
            
              setState(() {
                currentIndex = index; //  Update selected tab
              });
            },
            child: Container(
              margin: EdgeInsets.only(right: 8),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
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
