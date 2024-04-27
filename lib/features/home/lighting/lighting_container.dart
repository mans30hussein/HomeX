import 'package:flutter/material.dart';
import 'package:home_x/core/util/app_assets.dart';
import 'package:home_x/core/util/app_strings.dart';
import 'package:home_x/core/util/styles.dart';
import 'package:home_x/features/home/widgets/custom_image.dart';
// import 'package:home_x/features/home/widgets/custom_switch.dart';
import 'package:home_x/features/onbourding/ui/widgets/custom_text.dart';
import 'package:home_x/core/util/colors.dart';

class LightingContainer extends StatefulWidget {
  LightingContainer(
      {super.key,
      required this.backgroundColor,
      required this.trackColor,
      required this.thumb1Color,
      required this.thumb2Color,
      required this.backgroundImage});
  final String backgroundImage;
  final Color backgroundColor;
  final Color trackColor;
  final Color thumb1Color;
  final Color thumb2Color;

  bool isSwitched = false;
  @override
  State<LightingContainer> createState() => _LightingContainerState();
}

class _LightingContainerState extends State<LightingContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: widget.isSwitched ? null : widget.thumb2Color,
        image: widget.isSwitched
            ? DecorationImage(
                image: AssetImage(widget.backgroundImage),
                fit: BoxFit.cover,
              )
            : null,
        // color: widget.isSwitched ? widget.thumb2Color : widget.thumb1Color,
        borderRadius: BorderRadius.circular(22),
      ),
      // height: 200,
      // width: 184,
      height: 250,
      width: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
              alignment: Alignment.topRight,
              child: CustomImage(
                height: 108,
                width: 80,
                // height: 188,
                // width: 150,

                image: widget.isSwitched
                    ? Assets.assetsImagesLIghtingOn
                    : Assets.assetsImagesLightingOff,
              )),
          // if (widget.isSwitched)
          //   CustomImage(
          //     height: 40,
          //     width: 50,
          //     image: Assets.assetsImagesLight,
          //   ),
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
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Switch(
                    value: widget.isSwitched,
                    onChanged: (value) {
                      setState(() {
                        widget.isSwitched = value;
                      });
                    },
                    inactiveThumbColor: widget.thumb1Color,
                    thumbColor: !widget.isSwitched
                        ? MaterialStatePropertyAll<Color>(widget.thumb2Color)
                        : MaterialStatePropertyAll<Color>(widget.thumb1Color),
                    activeTrackColor: widget.trackColor,
                    inactiveTrackColor: widget.trackColor,
                    trackOutlineColor:
                        MaterialStatePropertyAll<Color>(widget.trackColor),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}