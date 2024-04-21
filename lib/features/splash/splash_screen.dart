import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:home_x/core/routing/const_routs.dart';
import 'package:home_x/core/shared_preference/cache_helper.dart';
import 'package:home_x/core/util/assets.dart';
import 'package:home_x/core/util/colors.dart';

import '../../core/services/services_locator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    bool isOnBoardingvisited =
        getIt<CacheHelper>().getData(key: "isOnBoardingvisited") ?? false;
    if (isOnBoardingvisited == false) {
      FirebaseAuth.instance.currentUser == null
          ? delayedNavigate(context, Routs.routLoginScreen)
          : FirebaseAuth.instance.currentUser!.emailVerified == true
              ? delayedNavigate(context, Routs.routHomeScreen)
              : delayedNavigate(context, Routs.routLoginScreen);
    } else {
      delayedNavigate(context, Routs.routOnbourdingScreen);
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.backgroundSplashScreen,
      body: Center(child: Image(image: AssetImage(Assets.logoApp))),
    );
  }
}

void delayedNavigate(context, path) {
  Future.delayed(
    const Duration(
      seconds: 2,
    ),
    () {
      Navigator.pushReplacementNamed(context, path);
      // bool onBoardingvisited =
      //         getIt<CacheHelper>().getData(key: "onBoardingvisited") ?? false,
      //     homeVisited =
      //         getIt<CacheHelper>().getData(key: "homeVisited") ?? false;
      // if (homeVisited) {
      //   Navigator.pushNamed(context, Routs.routHomeScreen);
      // } else {
      //   if (onBoardingvisited) {
      //     Navigator.pushNamed(context, Routs.routLoginScreen);
      //   } else {
      //     Navigator.pushNamed(context, Routs.routOnbourdingScreen);
      //   }

      // }
    },
  );
}
