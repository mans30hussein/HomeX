import 'package:flutter/material.dart';
import 'package:home_x/core/util/app_assets.dart';
import 'package:home_x/core/util/colors.dart';
import 'package:home_x/features/lighting/lighting_container.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: LightingContainer(
        backgroundColor: AppColors.primaryColors,
        trackColor: AppColors.lightGrey,
        thumb1Color: AppColors.primaryColors,
        thumb2Color: AppColors.lavender,
        backgroundImage: Assets.assetsImagesActiveWavesPurple,
      )),
    );
  }
}
