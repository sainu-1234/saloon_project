import 'package:flutter/material.dart';

class ColorUtils {
  static const Color blue = Color.fromARGB(255, 1, 54, 178);
  static List myColorlist = [
    const Color.fromARGB(255, 136, 32, 32),
    const Color.fromARGB(255, 8, 221, 118),
    const Color.fromARGB(255, 7, 85, 158),
    const Color.fromARGB(255, 128, 11, 192),
  ];
}

class TabBarUtils {
  static const List<Map<String, dynamic>> myTabs = [
    {'icon': Icons.content_cut_outlined, 'title': 'Hair cut'},
    {'icon': Icons.face_retouching_natural_outlined, 'title': 'Hair Styling'},
    {'icon': Icons.sentiment_very_satisfied_outlined, 'title': 'Shaving'},
    {'icon': Icons.favorite_border_outlined, 'title': 'Nail Styling'},
    {'icon': Icons.face_2_outlined, 'title': ' Face care'},
  ];
}

class ListviewUtils {
  late List<Map<String, dynamic>> listelements = [
    {
      "photo": "assets/images/listview.1.jpg",
      "name": "Glam Haven",
      "location": "PerinthalManna",
      "rating": "6.7(335)",
      "distaence": "2 km",
    },
    {
      "photo": "assets/images/listview.2.jpg",
      "name": "Skincare Beauty",
      "location": "Pattambi",
      "rating": "7.7(312)",
      "distaence": "1 km",
    },
    {
      "photo": "assets/images/listview.3.jpg",
      "name": "Sparkle Studio",
      "location": "PerinthalManna",
      "rating": "4.7(312)",
      "distaence": "2 km",
    },
    {
      "photo": "assets/images/listview.4.jpg",
      "name": "Beauty Boulevard",
      "location": "Malappuram",
      "rating": "8.7(382)",
      "distaence": "4 km",
    },
    {
      "photo": "assets/images/listview.5.jpg",
      "name": "Trendy Tresses",
      "location": "Tirur",
      "rating": "9.7(453)",
      "distaence": "7 km",
    },
    {
      "photo": "assets/images/listview.6.jpg",
      "name": "Gorgeous Glow",
      "location": "Valanchery",
      "rating": "9.7(312)",
      "distaence": "5km",
    },
  ];
}
