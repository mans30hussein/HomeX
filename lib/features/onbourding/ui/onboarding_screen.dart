import 'package:flutter/material.dart';
import 'package:home_x/core/util/app_assets.dart';
import 'package:home_x/core/util/app_strings.dart';
import 'package:home_x/core/util/app_text_styles.dart';
import 'package:home_x/data/services/cache_helper.dart';
// import 'package:home_x/core/util/colors.dart';
import 'package:home_x/features/onbourding/ui/widgets/custom_text.dart';
import 'package:home_x/features/onbourding/ui/widgets/onboarding_view.dart';
import 'package:home_x/services/service_lockator.dart';

class OnbourdingScreen extends StatefulWidget {
  const OnbourdingScreen({super.key});
  // static const routName = "OnbourdingScreen";

  @override
  State<OnbourdingScreen> createState() => _OnbourdingScreenState();
}

class _OnbourdingScreenState extends State<OnbourdingScreen> {
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.backgroundOnbourdingScreen,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF8B78FF),
              Color(0xFF7885FF),
              Color(0xFF8B78FF),
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
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
                    style: TextStyles.K2DStyle,
                  ),
                  onTap: () {
                    getIt<CacheHelper>()
                        .saveData(key: "onBoardingvisited", value: true);
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
                  image: AssetImage(Assets.assetsImagesAppIcon),
                ),
              ),
            ),
            Center(
              child: CustomText(
                text: "Home X",
                style: TextStyles.K2DStyle.copyWith(
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
      ),
    );
  }
}
