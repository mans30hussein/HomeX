import 'package:flutter/material.dart';
import 'package:home_x/core/services/services_locator.dart';
import 'package:home_x/core/util/app_strings.dart';

import 'package:home_x/core/shared_preference/cache_helper.dart';
import 'package:home_x/core/util/assets.dart';
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
            padding: const EdgeInsets.only(right: 16),
            child: Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                child: const Text(
                  AppStrings.skip,
                  style: StylesApp.K2DStyle,
                ),
                onTap: () {
                  getIt<CacheHelper>()
                      .saveData(key: "onBoardingvisited", value: true);
                 // Navigator.pushNamed(context, Routs.routLoginScreen);
                },
              ),
            ),
          ),
          const SizedBox(
            height: 110,
          ),
          Container(
            height: 90,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Assets.logoApp),
              ),
            ),
          ),
          Center(
            child: CustomText(
              text: "Home X",
              style: StylesApp.K2DStyle.copyWith(
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 110,
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
