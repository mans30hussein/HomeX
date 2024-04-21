import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_x/core/routing/const_routs.dart';
import 'package:home_x/core/services/services_locator.dart';
import 'package:home_x/core/util/app_assets.dart';
import 'package:home_x/core/util/app_strings.dart';

import 'package:home_x/core/shared_preference/cache_helper.dart';
import 'package:home_x/core/util/styles.dart';
import 'package:home_x/features/onbourding/ui/widgets/custom_text.dart';
import 'package:home_x/features/onbourding/ui/widgets/onboarding_view.dart';

class OnbourdingScreen extends StatefulWidget {
  const OnbourdingScreen({super.key});
  @override
  State<OnbourdingScreen> createState() => _OnbourdingScreenState();
}

class _OnbourdingScreenState extends State<OnbourdingScreen> {
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBourdingBodyScreen(controller: controller),
    );
  }
}

class OnBourdingBodyScreen extends StatelessWidget {
  const OnBourdingBodyScreen({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: gradientColors(),
      ),
      child: ListView(
        children: [
          Padding(
            padding:  EdgeInsets.only(right: 20.sp , top: 30.sp),
            child: Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                 onTap: () {
                  print("skip");
                  getIt<CacheHelper>()
                      .saveData(key: "isOnBoardingvisited", value: true);
                 Navigator.pushReplacementNamed(context, Routs.routLoginScreen);
                },
                child:  Text(
                  
                  AppStrings.skip,
                  style:TextStyle(
                    
                    color: Colors.white,
                    fontSize: 20.sp,
                  )
                ),
               
              ),
            ),
          ),
           SizedBox(
            height: 90.h,
          ),
          Container(
            height: 90.h,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Assets.assetsImagesAppIcon),
              ),
            ),
          ),
          Center(
            child: CustomText(
              text: "Home X",
              style: StylesApp.font15Madiam.copyWith(
                color: Colors.white,
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
           SizedBox(
            height: 110.h,
          ),
          OnBoardingView(
            controller: controller,
          ),
        ],
      ),
    );
  }

  LinearGradient gradientColors() {
    return const LinearGradient(
      colors: [
        Color(0xFF8B78FF),
        Color(0xFF7885FF),
        Color(0xFF8B78FF),
      ],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
    );
  }
}
