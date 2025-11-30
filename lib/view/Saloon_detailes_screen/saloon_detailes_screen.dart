import 'package:flutter/material.dart';
import 'package:saloon_project/utils/app_utils.dart';

class SaloonDetailesScreen extends StatefulWidget {
  const SaloonDetailesScreen({super.key});

  @override
  State<SaloonDetailesScreen> createState() => _SaloonDetailesScreenState();
}

class _SaloonDetailesScreenState extends State<SaloonDetailesScreen> {
  int currentindex = 0;
  bool isselect = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          Container(
            height: 40,
            width: 40,

            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 242, 241, 238),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: IconButton(
                onPressed: () {
                  isselect = !isselect;
                  setState(() {});
                },
                icon: Icon(
                  Icons.favorite,
                  size: 28,
                  color: isselect ? Colors.red : Colors.grey,
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                spacing: 24,
                crossAxisAlignment: CrossAxisAlignment.start,

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
                  // SizedBox(height: 24),
                  Column(
                    spacing: 8,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hair Avenue",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        spacing: 2,
                        children: [
                          Icon(
                            Icons.location_on_sharp,
                            size: 16,
                            color: ColorUtils.textgrey,
                          ),

                          Expanded(
                            child: Text(
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              "Pattambi Road,Perinthalmanna,Malappuram",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: ColorUtils.textgrey,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        spacing: 2,
                        children: [
                          Icon(
                            Icons.access_time,
                            size: 14,
                            color: ColorUtils.textgrey,
                          ),

                          Text(
                            " 9AM - 10PM , Mon - Sun",
                            style: TextStyle(
                              color: ColorUtils.textgrey,

                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        spacing: 2,
                        children: [
                          Text("⭐", style: TextStyle(fontSize: 14)),
                          Text(
                            "4.7 (321)",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: ColorUtils.textgrey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    "Hair Avenue provides expert haircuts,syling,along with servieces like facials,cleanups,skincare and make to keep you looking your best.",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 5,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: ColorUtils.textgrey,
                    ),
                  ),

                  Text(
                    "Services",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  // Saloon feature card
                  _buildSaloonFeatures(),
                ],
              ),
            ),
          ),
          // continue button 
          Positioned(
            left: 15,
            right: 15,
            bottom: 15,
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(12),
              child:ContinueButton.continueButton(text: "Continue", clr: ColorUtils.blue, textclr: Colors.white)
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSaloonFeatures() {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: SaloonFeatureUtils.features.length,
      itemBuilder: (context, index) => Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    SaloonFeatureUtils.features[index]["title"],
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 4),

                  Row(
                    children: [
                      Text(
                        "Rs ${SaloonFeatureUtils.features[index]["price"]}",
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                      SizedBox(width: 16),

                      Icon(Icons.access_time, size: 15, color: Colors.grey),

                      SizedBox(width: 4),
                      Text(
                        SaloonFeatureUtils.features[index]["time"],
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Center(
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add_circle_outline,
                  size: 20,
                  color: Colors.black87,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
