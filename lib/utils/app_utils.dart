import 'package:flutter/material.dart';

class ColorUtils {
  static const Color blue = Color.fromARGB(255, 1, 54, 178);
  static const Color textgrey = Color(0xFF7F7F7F);
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

class SaloonDataUtils {
  static const List<Map<String, dynamic>> listelements = [
    {
      "photo":
          "https://images.pexels.com/photos/7518741/pexels-photo-7518741.jpeg",
      "name": "Glam Haven",
      "location": "PerinthalManna",
      "rating": "6.7",
      "reviewcount": "(312)",
      "distance": "2 km",
    },
    {
      "photo":
          "https://images.pexels.com/photos/7518739/pexels-photo-7518739.jpeg",
      "name": "Skincare Beauty",
      "location": "Pattambi",
      "rating": "7.7",
      "reviewcount": "(382)",

      "distance": "1 km",
    },
    {
      "photo":
          "https://images.pexels.com/photos/4969838/pexels-photo-4969838.jpeg",
      "name": "Sparkle Studio",
      "location": "PerinthalManna",
      "rating": "4.7",
      "reviewcount": "(236)",

      "distance": "2 km",
    },
    {
      "photo":
          "https://images.pexels.com/photos/29189823/pexels-photo-29189823.jpeg",
      "name": "Beauty Boulevard",
      "location": "Malappuram",
      "rating": "8.7",
      "reviewcount": "(195)",

      "distance": "4 km",
    },
    {
      "photo":
          "https://images.pexels.com/photos/1813346/pexels-photo-1813346.jpeg",
      "name": "Trendy Tresses",
      "location": "Tirur",
      "rating": "9.7",
      "reviewcount": "(212)",

      "distance": "7 km",
    },
    {
      "photo":
          "https://images.pexels.com/photos/34865582/pexels-photo-34865582.jpeg",
      "name": "Gorgeous Glow",
      "location": "Valanchery",
      "rating": "9.7",
      "reviewcount": "(328)",

      "distance": "5km",
    },
  ];
}

class SaloonFeatureUtils {
  static const List<Map> features = [
    {'title': 'Hair cut', 'price': '120.00', 'time': '40 Mins'},
    {'title': 'Hair Styling', 'price': '150.00', 'time': '45 Mins'},
    {'title': 'Shaving', 'price': '110.00', 'time': '25 Mins'},
    {'title': 'Beard Styling', 'price': '150.00', 'time': '45 Mins'},
    {'title': 'Face Care', 'price': '180.00', 'time': '40 Mins'},
  ];
}

class ContinueButton {
  static Container continueButton({
    required String text,
    required Color clr,
    required Color textclr,
  }) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        color: clr,
        borderRadius: BorderRadius.circular(12),
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
          color: textclr,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
