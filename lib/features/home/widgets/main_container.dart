import 'package:flutter/material.dart';
import 'package:home_x/core/util/app_strings.dart';
import 'package:home_x/core/util/styles.dart';
// import 'package:home_x/features/home/widgets/custom_switch.dart';
import 'package:home_x/features/onbourding/ui/widgets/custom_text.dart';
import 'package:home_x/core/util/colors.dart';

class FeatureContainer extends StatefulWidget {
  FeatureContainer(
      {super.key,
      required this.backgroundColor,
      required this.image,
      required this.trackColor,
      required this.thumb1Color,
      required this.thumb2Color});
  final String image;
  final Color backgroundColor;
  final Color trackColor;
  final Color thumb1Color;
  final Color thumb2Color;

  bool isSwitched = false;
  @override
  State<FeatureContainer> createState() => _FeatureContainerState();
}

class _FeatureContainerState extends State<FeatureContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: widget.isSwitched ? widget.thumb2Color : widget.thumb1Color,
        borderRadius: BorderRadius.circular(22),
      ),
      height: 174,
      width: 158,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.image),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Column(
            children: [
              CustomText(
                text: widget.isSwitched ? AppStrings.on : AppStrings.off,
                style: StylesApp.font20Madiam.copyWith(fontSize: 15),
              ),
              // CustomSwitch(
              //   thumbColor: thumbColor,
              //   trackColor: trackColor,
              //   isSwitched: isSwitched,
              // ),
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
                  inactiveThumbColor: widget.thumb1Color,
                  thumbColor: widget.isSwitched
                      ? MaterialStatePropertyAll<Color>(widget.thumb2Color)
                      : MaterialStatePropertyAll<Color>(widget.thumb1Color),
                  activeTrackColor: widget.trackColor,
                  inactiveTrackColor: widget.trackColor,
                  trackOutlineColor:
                      MaterialStatePropertyAll<Color>(widget.trackColor),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
