import 'package:flutter/material.dart';
import 'package:home_x/core/util/colors.dart';
import 'package:home_x/core/util/styles.dart';
import 'package:home_x/core/util/svg_images.dart';

// ignore: must_be_immutable
class GasContainer extends StatefulWidget {
  GasContainer({super.key, required this.gas});

  bool isSwitched = false;
  final int gas;
  @override
  State<GasContainer> createState() => _GasContainerState();
}

class _GasContainerState extends State<GasContainer> {
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
          Positioned(top: 0, right: 0, child: SVGImges().gasEllipse),
          Positioned(
            top: 30,
            right: 15,
            child: Text(
              '${widget.gas}%',
              style: StylesApp.font28Madiam.copyWith(fontSize: 22),
            ),
          ),
          Positioned(
              bottom: 10,
              right: 0,
              child: Row(
                children: [
                  Text(
                    'Safe',
                    style: StylesApp.font28Madiam
                        .copyWith(fontSize: 12, color: AppColors.babyblue),
                  ),
                  SVGImges().bazer,
                ],
              )),
          Positioned(
            bottom: 16,
            left: 20,
            child: Text(
              'Gas ratio',
              style: StylesApp.font28Madiam.copyWith(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
