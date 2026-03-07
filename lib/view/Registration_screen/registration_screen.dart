import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saloon_project/controller/registration_controller/registration_screen_controller.dart';
import 'package:saloon_project/utils/app_utils.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final formkey = GlobalKey<FormState>();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController conformpasswordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  if (value == null || value.isEmpty) {
                    return "Email is required";
                  }
                  if (!RegExp(
                    r'^[\w-.]+@([\w-]+\.)+[\w]{2,4}$',
                  ).hasMatch(value)) {
                    return "Enter a valid email";
                  }
                  return null;
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
                  return "Please check your username";
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
                  return "Please check your password";
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
                  return "Please confirm the Password";
                },
                controller: conformpasswordcontroller,
                decoration: InputDecoration(
                  hintText: "Confirm Password",
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: .7),

                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Login",

                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
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
                      context.read<RegistrationScreenController>().registration(
                        email: emailcontroller.text,
                        password: passwordcontroller.text,
                        context: context,
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
