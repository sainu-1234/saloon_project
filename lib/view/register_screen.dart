import 'package:flutter/material.dart';
import 'package:saloon_project/utils/color_utils.dart';
import 'package:saloon_project/view/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formkey = GlobalKey<FormState>();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController conformpasswordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(backgroundColor: Colors.transparent,),
      body: Container(
        padding: EdgeInsets.all(15),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/login.png"),
             colorFilter: ColorFilter.mode(
              Colors.black.withValues(alpha: .7),
              BlendMode.darken,
            ),
          ),
        ),
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            spacing: 15,
            children: [
              Text(
                "Register",
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // SizedBox(height: 10),
              TextFormField(
                validator: (value) {
                  // ignore: unrelated_type_equality_checks
                  if (value != null && value.contains("@")) {
                    return null;
                  }
                  return "Please conform The Password";
                },
                controller: emailcontroller,
                decoration: InputDecoration(
                  hintText: "Email",
                  // labelText: "asdfgh",
                   filled: true,
                  fillColor: Colors.white.withValues(alpha: .7),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                   errorStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextFormField(
                validator: (value) {
                  // ignore: unrelated_type_equality_checks
                  if (value != null && value.isNotEmpty) {
                    return null;
                  }
                  return "Please check your email";
                },
                controller: usernamecontroller,
                decoration: InputDecoration(
                  hintText: "User Name",

                  filled: true,
                  fillColor: Colors.white.withValues(alpha: .7),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                   errorStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextFormField(
                validator: (value) {
                  // ignore: unrelated_type_equality_checks
                  if (value != null && value.length >= 5) {
                    return null;
                  }
                  return "Please conform The Password";
                },
                controller: passwordcontroller,
                decoration: InputDecoration(
                  hintText: "Password",

                  filled: true,
                  fillColor: Colors.white.withValues(alpha: .7),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                   errorStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextFormField(
                validator: (value) {
                  // ignore: unrelated_type_equality_checks
                  if (value != null && value == passwordcontroller.text) {
                    return null;
                  }
                  return "Please conform The Password";
                },
                controller: conformpasswordcontroller,
                decoration: InputDecoration(
                  hintText: "Confirm Password",
 filled: true,
                  fillColor: Colors.white.withValues(alpha: .7),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(ColorUtils.blue),
                    foregroundColor: WidgetStatePropertyAll(Colors.white),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(10),
                      ),
                    ),
                  ),
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    }
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Register",
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
