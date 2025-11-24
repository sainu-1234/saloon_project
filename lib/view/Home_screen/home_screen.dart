import 'package:carousel_slider/carousel_slider.dart'
    show CarouselOptions, CarouselSlider;
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    List mylist = [
      Colors.black,
      const Color.fromARGB(255, 136, 32, 32),
      const Color.fromARGB(255, 8, 221, 118),
      const Color.fromARGB(255, 7, 85, 158),
      const Color.fromARGB(255, 128, 11, 192),
    ];
    return Scaffold(
      body: Center(
        child: Column(
          spacing: 15,
          children: [
            SizedBox(height: 20),
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
            Padding(
              padding: const EdgeInsets.all(17),
              child: TextField(
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
            ),
            CarouselSlider.builder(
              options: CarouselOptions(
                height: 200,
                aspectRatio: 10 / 10,
                viewportFraction: 0.9,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 5),
                autoPlayAnimationDuration: Duration(seconds: 1),
                autoPlayCurve: Curves.ease,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                scrollDirection: Axis.horizontal,
              ),
              itemCount: 5,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      Container(
                        decoration: BoxDecoration(
                          color: mylist[itemIndex],
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Row(
                children: [
                  Text(
                    "Services",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 15,
                  children: List.generate(
                    5,
                    (index) => Container(
                      height: 60,
                      width: 120,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 2, 63, 245),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 10,
                          children: [
                            Icon(
                              Icons.star_outline_rounded,
                              size: 26,
                              color: const Color.fromARGB(255, 248, 243, 243),
                            ),
                            Text(
                              "Hair Cut",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
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
            ),
          ],
        ),
      ),
    );
  }
}
