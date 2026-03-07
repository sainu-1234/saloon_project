import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:saloon_project/utils/app_utils.dart';
import 'package:saloon_project/view/Login_screen/login_screen.dart';

class RegistrationScreenController with ChangeNotifier {
  // user Registration
  Future<void> registration({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      // show snackbar while user registered
      if (credential.user != null) {
        AppUtils.showSnackbar(
          context,
          message: "User Regitered",
          color: Colors.greenAccent,
        );
      }
      //  go to login page when user registered
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      ); 

      // firebase exception handling
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        AppUtils.showSnackbar(
          context,
          message: " password is weak ",
          color: Colors.redAccent,
        );
      } else if (e.code == 'email-already-in-use') {
        AppUtils.showSnackbar(
          context,
          message: 'The account already exists for that email.',
          color: Colors.redAccent,
        );
      }
    } catch (e) {
      print(e);
    }
  }
}
