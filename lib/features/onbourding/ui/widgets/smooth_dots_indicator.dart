import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SmoothDotsIndicator extends StatelessWidget {
  const SmoothDotsIndicator({
    super.key,
    required this.controller,
    required this.count,
  });

  final PageController controller;
  final int count;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: count,
      effect:  ExpandingDotsEffect(
        dotWidth: 8,
        dotHeight: 7,
        activeDotColor:const Color(0xff8B78FF),
        dotColor: Colors.black.withOpacity(.7)
      ),
    );
  }
}
