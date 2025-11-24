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
    {
      'icon': Icons.content_cut_outlined,
      'title': 'Hair cut',
    },
    {
      'icon': Icons.face_retouching_natural_outlined,
      'title': 'Hair Styling',
    },
    {
      'icon': Icons.sentiment_very_satisfied_outlined,
      'title': 'Shaving',
    },
    {
      'icon': Icons.favorite_border_outlined,
      'title': 'Nail Styling',
    },
    {
      'icon': Icons.face_2_outlined,
      'title': ' Face care',
    },
  ];
}
