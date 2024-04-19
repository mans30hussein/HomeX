import 'package:flutter/widgets.dart';
import 'package:home_x/core/util/colors.dart';
import 'package:home_x/core/util/fonts.dart';

class StylesApp {
  static const TextStyle font30SemiBold = TextStyle(
      fontSize: 30,
      fontWeight: FontWieghtHelper.semi_bold,
      fontFamily: 'K2D',
      color: Color(0xff373737));
  static const TextStyle font14Mediam = TextStyle(
      fontSize: 14,
      fontWeight: FontWieghtHelper.mediam,
      fontFamily: 'K2D',
      color: Color.fromARGB(255, 83, 83, 83));

  // static Color? textColor;
  static const TextStyle font20Madiam = TextStyle(
      fontSize: 20,
      fontWeight: FontWieghtHelper.mediam,
      fontFamily: 'K2D',
      color: Color(0xffFFFFFF));
  static const TextStyle font16Madiam = TextStyle(
      fontSize: 16,
      fontWeight: FontWieghtHelper.mediam,
      fontFamily: 'K2D',
      color: AppColors.primaryColors);

  static const font15Madiam = TextStyle(
    color: AppColors.gray,
    fontSize: 15,
    fontFamily: "K2DRegular",
    fontWeight: FontWieghtHelper.mediam,
  );
}
