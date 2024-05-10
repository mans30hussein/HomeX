import 'package:flutter/material.dart';
import 'package:home_x/core/util/colors.dart';
import 'package:home_x/core/util/styles.dart';
import 'package:home_x/core/util/svg_images.dart';

// ignore: must_be_immutable
class PlantContainer extends StatefulWidget {
  PlantContainer(
      {super.key, required this.soilMoisture, required this.waterPumpState});

  bool isSwitched = false;
  final bool soilMoisture;
  final bool waterPumpState;
  @override
  State<PlantContainer> createState() => _PlantContainerState();
}

class _PlantContainerState extends State<PlantContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
      ),
      height: 220,
      width: 240,
      child: Stack(
        children: [
          Positioned(top: 0, right: 0, child: SVGImges().plantEllipse),
          Positioned(top: 30, right: 25, child: SVGImges().plant),
          Positioned(
            bottom: 16,
            left: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Soil Moisture',
                  style: StylesApp.font28Madiam.copyWith(fontSize: 16),
                ),
                // Spacer(
                //   flex: 1,
                // ),
                Text(
                  widget.soilMoisture ? 'Heigh' : 'Low',
                  style: StylesApp.font28Madiam
                      .copyWith(fontSize: 16, color: AppColors.babyblue),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 40,
            left: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Water Pump',
                  style: StylesApp.font28Madiam.copyWith(fontSize: 16),
                ),
                // Spacer(
                //   flex: 1,
                // ),
                Text(
                  widget.waterPumpState ? 'On' : 'Off',
                  style: StylesApp.font28Madiam
                      .copyWith(fontSize: 16, color: AppColors.babyblue),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
