import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:saloon_project/utils/app_utils.dart';

class LoginScreenController with ChangeNotifier {
  Future<void> onLogin({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      // show snackbar while user is Logined
      if (credential.user != null) {
        AppUtils.showSnackbar(
          context,
          message: "Welcome Back",
          color: Colors.greenAccent,
        );
      }
      //  go to login page when user registered
      // Navigator.pushReplacement(
      //   context,
      //   MaterialPageRoute(builder: (context) => BottomNavigationScreen()),
      // );     //---------------------this is not need because strem builder automatically does this--------------
    } on FirebaseAuthException catch (e) {
      log(e.code); // debug ckeck

      if (e.code == 'invalid-credential') {
        AppUtils.showSnackbar(
          context,
          message: " Wrong Email / Password ",
          color: Colors.redAccent,
        );
      } else if (e.code == 'network-request-failed') {
        AppUtils.showSnackbar(
          context,
          message: " Check your network connection ",
          color: Colors.redAccent,
        );
      }
    }
  }
}
