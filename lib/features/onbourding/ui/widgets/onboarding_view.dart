import 'package:flutter/material.dart';
import 'package:home_x/features/onbourding/data/onbourding_model.dart';
import 'package:home_x/features/onbourding/ui/widgets/onboarding_container.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key, required this.controller});
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: PageView.builder(
        controller: controller,
        itemCount: onBoardingList.length,
        physics: const BouncingScrollPhysics(),

        itemBuilder: (context, index) => OnbourdingContainer(
          controller: controller,
          onBoardingModel: onBoardingList[index],
          curindx: index,
        ),
      ),
    );
  }
}
