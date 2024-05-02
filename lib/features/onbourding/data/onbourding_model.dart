import 'package:flutter/material.dart';
import 'package:home_x/core/util/svg_images.dart';

class OnBoardingModel {
  final String title;
  final String subTitle1;
  final Widget image;
  final Color color;
  OnBoardingModel({
    required this.image,
    required this.color,
    required this.title,
    required this.subTitle1,
  });
}

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
    title: 'Welcome to Your\nSmart home',
    subTitle1:
        'with the help of your smart home app you can control various aspects of your home with just a few taps on your phone.',
    image: SVGImges().onboardingOne,
    color: const Color(0xFF88B5FF),
  ),
  OnBoardingModel(
    title: 'Easy control\nwherever you Are',
    subTitle1:
        'Now you can control your home appliances easily and comfortably  from wherever you are , just connect to the Wi-Fi and control the Home Instantly.',
    image: SVGImges().onboardingTwo,
    color: const Color(0xFF7885FF),
  ),
  OnBoardingModel(
    title: 'AI makes it Smarter',
    subTitle1:
        'AI makes your Home more Secured, Smart Identification and Access became more easier with Homex , now you can Detect who on the gate and give him permission to enter by just simple tap from your smart phone. ',
    image: SVGImges().onboardingThree,
    color: const Color(0xFF8B78FF),
  ),
];
