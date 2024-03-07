import 'package:flutter/material.dart';
import 'package:home_x/core/util/app_strings.dart';
import 'package:home_x/core/util/app_text_styles.dart';
import 'package:home_x/core/util/colors.dart';
import 'package:home_x/data/services/cache_helper.dart';
import 'package:home_x/features/onbourding/data/onbourding_model.dart';
import 'package:home_x/features/onbourding/ui/widgets/custom_gester_detector_text.dart';
import 'package:home_x/services/service_lockator.dart';

class GetButtons extends StatefulWidget {
  const GetButtons(
      {super.key, required this.curindx, required this.controller});
  final int curindx;
  final PageController controller;

  @override
  State<GetButtons> createState() => _GetButtonsState();
}

class _GetButtonsState extends State<GetButtons> {
  @override
  Widget build(BuildContext context) {
    if (widget.curindx >= onBoardingList.length - 1) {
      return CustomGesterDetectorText(
        text: AppStrings.getStarted,
        ontap: () {
          getIt<CacheHelper>().saveData(key: "onBoardingvisited", value: true);
        },
        style: TextStyles.K2DStyle.copyWith(
          color: AppColors.backgroundOnbourdingScreen,
        ),
        arrowColor: AppColors.backgroundOnbourdingScreen,
      );
    } else {
      return CustomGesterDetectorText(
        text: AppStrings.continueText,
        ontap: () {

          widget.controller.nextPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.bounceIn,
          );
          // print(widget.curindx);
        },
        style: TextStyles.K2DStyle.copyWith(fontSize: 16),
      );
    }
  }
}
