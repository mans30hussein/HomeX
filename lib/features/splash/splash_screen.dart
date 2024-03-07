import 'dart:async';
import 'package:flutter/material.dart';
import 'package:home_x/core/functions/navigate_push.dart';
import 'package:home_x/core/util/app_assets.dart';
import 'package:home_x/core/util/colors.dart';
import 'package:home_x/data/services/cache_helper.dart';
import 'package:home_x/services/service_lockator.dart';

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
      body: Center(child: Image(image: AssetImage(Assets.assetsImagesAppIcon))),
    );
  }
}

void delayedNavigate(context) {
  Future.delayed(
    const Duration(
      seconds: 2,
    ),
    () {
      bool onBoardingvisited =
          getIt<CacheHelper>().getData(key: "onBoardingvisited") ?? false;
      if (onBoardingvisited) {
        pushReplacementNavigate(context, '/');
      } else {
        pushReplacementNavigate(context, '/onBoarding');
      }
    },
  );
}
