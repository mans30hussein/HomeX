import 'package:flutter/material.dart';
import 'package:home_x/core/util/app_assets.dart';
import 'package:home_x/core/util/colors.dart';
import 'package:home_x/features/home/widgets/main_container.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: FeatureContainer(
        backgroundColor: AppColors.primaryColors,
        image: Assets.assetsImagesLighting,
        trackColor: AppColors.lightGrey,
        thumb1Color: AppColors.primaryColors,
        thumb2Color: AppColors.lavender,
      )),
    );
  }
}
