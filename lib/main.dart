import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saloon_project/controller/bottom_navbar_screen_controller/bottom_navbar_screen_controller.dart';
import 'package:saloon_project/controller/login_controller/login_screen_controller.dart';
import 'package:saloon_project/controller/registration_controller/registration_screen_controller.dart';
import 'package:saloon_project/firebase_options.dart';
import 'package:saloon_project/view/Splash_screen/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => RegistrationScreenController(),
        ),
        ChangeNotifierProvider(create: (context) => LoginScreenController()),
        ChangeNotifierProvider(create: (context) => BottomNavProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
