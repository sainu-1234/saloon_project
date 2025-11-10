import 'package:flutter/material.dart';
import 'package:saloon_project/utils/color_utils.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        child: Column(
          spacing: 20,
          children: [
            SizedBox(height: 30),
            Text(
              "Verify Your Identity",
              style: TextStyle(
                color: const Color.fromARGB(255, 4, 4, 2),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              textAlign: TextAlign.center,
              "we've sent a 4-digit code to 071*****05\nPlease enter it below",
              style: TextStyle(
                color: const Color.fromARGB(255, 138, 138, 127),
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              spacing: 27,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE1DCCC),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "1",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 13, 13, 13),
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE1DCCC),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "2",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 13, 13, 13),
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE1DCCC),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "3",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 13, 13, 13),
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE1DCCC),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "4",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 13, 13, 13),
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  "Didnt' receive a code?",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 138, 138, 127),
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Resent",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 2, 60, 248),
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Container(height: 430),
            SizedBox(
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(ColorUtils.blue),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(10),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 245, 247, 250),
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
