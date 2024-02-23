import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:home_x/features/onbourding/ui/onboarding.dart';
import 'package:home_x/features/splash/splash_screen.dart';

import 'features/home.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        SplashScreen.routName : (context) => SplashScreen(),
        OnbourdingScreen.routName : (context) => OnbourdingScreen(),
      },
    );
  }
}
