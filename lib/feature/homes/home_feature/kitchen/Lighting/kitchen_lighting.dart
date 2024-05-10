import 'package:flutter/material.dart';
import 'package:home_x/core/util/app_strings.dart';
import 'package:home_x/core/util/colors.dart';
import 'package:home_x/core/util/styles.dart';
import 'package:home_x/core/util/svg_images.dart';
import 'package:home_x/feature/onbourding/ui/widgets/custom_text.dart';

// ignore: must_be_immutable
class KitchenLighting extends StatefulWidget {
  KitchenLighting({
    super.key,
  });

  bool isSwitched = false;
  @override
  State<KitchenLighting> createState() => _KitchenLightingState();
}

class _KitchenLightingState extends State<KitchenLighting> {
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: AppColors.babyblue,
        borderRadius: BorderRadius.circular(22),
      ),
      height: 190,
      width: 174,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: SVGImges().kitchenLampa,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
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
                      thumbColor: const MaterialStatePropertyAll<Color>(
                          AppColors.babyblue),
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
