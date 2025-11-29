import 'package:flutter/material.dart';

class SaloonDetailesScreen extends StatefulWidget {
  const SaloonDetailesScreen({super.key});

  @override
  State<SaloonDetailesScreen> createState() => _SaloonDetailesScreenState();
}

class _SaloonDetailesScreenState extends State<SaloonDetailesScreen> {
  int currentindex = 0;
  bool isselect = true;

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
          spacing: 10,
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                spacing: 2,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    "Pattambi Road,Perinthalmanna,Malappuram",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "9AM-10M,Mon - Sun",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "4.7 (321)",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Text(
              textAlign: TextAlign.justify,
              "Hair Avenue provides expert haircuts,syling,along with servieces like facials,cleanups,skincare and make to keep you looking your best.",
              overflow: TextOverflow.ellipsis,
              maxLines: 5,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),

            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(5, (index) {
                  isselect = currentindex == index;
                  return Padding(
                    padding: EdgeInsetsGeometry.symmetric(horizontal: 15),
                    child: InkWell(
                      onTap: () {
                        currentindex = index;
                        setState(() {});
                      },
                      child: Text(
                        "sainu",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: isselect
                              ? const Color.fromARGB(255, 5, 92, 190)
                              : Colors.black,
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
            // ListView.builder(
            //   shrinkWrap: true,
            //   physics: NeverScrollableScrollPhysics(),
            //   itemCount: 4,
            //   itemBuilder: (context, index) {
            //     return Container(
            //       margin: EdgeInsets.symmetric(vertical: 10),
            //       child: ListTile(
            //         title: Text("Hair Cut"),
            //         subtitle: Text("\$300 30 Mins"),
            //         trailing: Icon(Icons.add_circle_outline),
            //       ),
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
