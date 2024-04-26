import 'package:flutter/material.dart';
import 'package:home_x/core/util/app_strings.dart';
import 'package:home_x/core/util/colors.dart';
import 'package:home_x/core/util/styles.dart';
import 'package:home_x/core/util/svg_images.dart';
import 'package:home_x/features/onbourding/ui/widgets/custom_text.dart';

// ignore: must_be_immutable
class BedLightContainer extends StatefulWidget {
  BedLightContainer({
    super.key,
  });

  bool isSwitched = false;
  @override
  State<BedLightContainer> createState() => _BedLightContainerState();
}

class _BedLightContainerState extends State<BedLightContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: widget.isSwitched ? null : AppColors.babyblue,
        borderRadius: BorderRadius.circular(22),
      ),
      height: 190,
      width: 174,
      child: Stack(
        children: [
          if (widget.isSwitched)
            Positioned.fill(
              child: FittedBox(
                fit: BoxFit.cover,
                child: SVGImges().blueWaves2,
              ),
            ),
          Positioned(
            top: 0,
            right: 0,
            child: widget.isSwitched
                ? SVGImges().babyLampaOn
                : SVGImges().babyLampaOff,
          ),
          Positioned(
            left: 15,
            bottom: 0,
            child: widget.isSwitched
                ? SVGImges().bedLightOn
                : SVGImges().bedLightOff,
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0, bottom: 8),
              child: Column(
                children: [
                  CustomText(
                    text: widget.isSwitched ? AppStrings.on : AppStrings.off,
                    style: StylesApp.font20Madiam.copyWith(fontSize: 15),
                  ),
                  Transform.scale(
                    scaleX: 1.2,
                    scaleY: 1.1,
                    child: Switch(
                      value: widget.isSwitched,
                      onChanged: (value) {
                        setState(() {
                          widget.isSwitched = value;
                        });
                      },
                      inactiveThumbColor: AppColors.lightGrey,
                      thumbColor: !widget.isSwitched
                          ? const MaterialStatePropertyAll<Color>(
                              AppColors.babyblue)
                          : const MaterialStatePropertyAll<Color>(
                              AppColors.blue),
                      activeTrackColor: AppColors.lightGrey,
                      inactiveTrackColor: AppColors.lightGrey,
                      trackOutlineColor: const MaterialStatePropertyAll<Color>(
                          AppColors.lightGrey),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
