import 'dart:async';
import 'package:flutter/material.dart';
import 'package:home_x/core/routing/const_routs.dart';
import 'package:home_x/core/services/services_locator.dart';
import 'package:home_x/core/shared_preference/cache_helper.dart';
import 'package:home_x/core/util/assets.dart';
import 'package:home_x/core/util/colors.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    delayedNavigate(context);
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

void delayedNavigate(context) {
  Future.delayed(
    const Duration(
      seconds: 2,
    ),
    () {
      Navigator.pushNamed(context, Routs.routOnbourdingScreen);
      bool onBoardingvisited =
              getIt<CacheHelper>().getData(key: "onBoardingvisited") ?? false,
          homeVisited =
              getIt<CacheHelper>().getData(key: "homeVisited") ?? false;
      if (homeVisited) {
        Navigator.pushNamed(context, Routs.routHomeScreen);
      } else {
        if (onBoardingvisited) {
          Navigator.pushNamed(context, Routs.routLoginScreen);
        } else {
          Navigator.pushNamed(context, Routs.routOnbourdingScreen);
        }
      }
    },
  );
}
