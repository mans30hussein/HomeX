import 'dart:async';

import 'package:flutter/material.dart';
import 'package:home_x/core/util/assets.dart';
import 'package:home_x/core/util/colors.dart';
import 'package:home_x/features/onbourding/ui/onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const routName = "SplashScreen";
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 6), () {
      Navigator.pushNamed(context, OnbourdingScreen.routName);
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: backgroundSplashScreen,
      body:Text("Home X"),
          //Center(child: Image(image: AssetImage(logoApp))),
    );
  }
}
