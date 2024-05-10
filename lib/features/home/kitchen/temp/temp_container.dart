import 'package:flutter/material.dart';
import 'package:home_x/core/util/colors.dart';
import 'package:home_x/core/util/styles.dart';
import 'package:home_x/core/util/svg_images.dart';

// ignore: must_be_immutable
class TempContainer extends StatefulWidget {
  TempContainer({super.key, required this.temp});

  bool isSwitched = false;
  final double temp;
  @override
  State<TempContainer> createState() => _TempContainerState();
}

class _TempContainerState extends State<TempContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
      ),
      height: 190,
      width: 174,
      child: Stack(
        children: [
          Positioned(top: 0, right: 0, child: SVGImges().tempEllipse),
          Positioned(top: 0, right: 0, child: SVGImges().tempEllipse),
          Positioned(
            top: 50,
            right: 30,
            child: Text(
              '${widget.temp.toStringAsFixed(1)}°',
              style: StylesApp.font28Madiam.copyWith(fontSize: 22),
            ),
          ),
          Positioned(
              bottom: 10,
              right: 15,
              child: Row(
                children: [
                  Text(
                    'Safe',
                    style: StylesApp.font28Madiam
                        .copyWith(fontSize: 12, color: AppColors.babyblue),
                  ),
                  SVGImges().temp,
                ],
              )),
          Positioned(
            bottom: 10,
            left: 20,
            child: Text(
              'Temp',
              style: StylesApp.font28Madiam.copyWith(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
