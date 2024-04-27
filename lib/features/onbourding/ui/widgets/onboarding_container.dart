import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_x/core/util/styles.dart';
import 'package:home_x/features/onbourding/data/onbourding_model.dart';
import 'package:home_x/features/onbourding/ui/widgets/custom_text.dart';
import 'package:home_x/features/onbourding/ui/widgets/get_buttons.dart';
import 'package:home_x/features/onbourding/ui/widgets/smooth_dots_indicator.dart';

class OnbourdingContainer extends StatefulWidget {
  const OnbourdingContainer({
    super.key,
    required this.onBoardingModel,
    required this.controller, required this.curindx,
  });

  final OnBoardingModel onBoardingModel;
  final PageController controller;
  final int curindx;

  @override
  State<OnbourdingContainer> createState() => _OnbourdingContainerState();
}

class _OnbourdingContainerState extends State<OnbourdingContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 390.h,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: widget.onBoardingModel.title,
                  style: StylesApp.font15Madiam.copyWith(
                    fontFamily: "K2DBold",
                    fontSize: 18.sp,
                  ),
                ),
                SmoothDotsIndicator(
                  controller: widget.controller,
                  count: onBoardingList.length,
                ),
              ],
            ),
             SizedBox(
              height: 20.h,
            ),
            SizedBox(
                height: 100.h,
                child: CustomText(
                  text: widget.onBoardingModel.subTitle1,
                  style: StylesApp.font15Madiam,
                )),
            SizedBox(
                height: 100.h,
                child: CustomText(
                  text: widget.onBoardingModel.subTitle2!,
                  style: StylesApp.font15Madiam,
                )),
            GetButtons(
              curindx: widget.curindx,
              controller: widget.controller,
            )
          ],
        ),
      ),
    );
  }
}
