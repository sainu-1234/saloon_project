import 'package:flutter/material.dart';

class SaloonDetailesScreen extends StatefulWidget {
  const SaloonDetailesScreen({super.key});

  @override
  State<SaloonDetailesScreen> createState() => _SaloonDetailesScreenState();
}

class _SaloonDetailesScreenState extends State<SaloonDetailesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            child: Center(
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_border, size: 28),
              ),
            ),
            height: 40,
            width: 40,

            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 242, 241, 238),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 20,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://images.pexels.com/photos/705255/pexels-photo-705255.jpeg",
                  ),
                ),
                color: Colors.amber,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Text(
              "Hair Avenue",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
