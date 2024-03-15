import 'package:flutter/widgets.dart';
import 'package:home_x/core/util/colors.dart';
import 'package:home_x/core/util/fonts.dart';

class StylesApp {
  static const TextStyle loginTitle = TextStyle(
      fontSize: 30,
      fontWeight: FontWieghtHelper.semi_bold,
      fontFamily: 'K2D',
      color: Color(0xff373737));
  static const TextStyle labelText = TextStyle(
      fontSize: 14,
      fontWeight: FontWieghtHelper.mediam,
      fontFamily: 'K2D',
      color: Color.fromARGB(255, 83, 83, 83));
  static const TextStyle hintText = TextStyle(
      fontSize: 14,
      fontWeight: FontWieghtHelper.mediam,
      fontFamily: 'K2D',
      color: Color(0xff868686));
 // static Color? textColor;
  static const TextStyle styleBotton = TextStyle(
      fontSize: 20,
      fontWeight: FontWieghtHelper.mediam,
      fontFamily: 'K2D',
      color: Color(0xffFFFFFF));
       static const TextStyle styleForgetPassword = TextStyle(
      fontSize: 16,
      fontWeight: FontWieghtHelper.mediam,
      fontFamily: 'K2D',
      color: AppColors.primaryColors);


  static const K2DStyle =  TextStyle(
    color: AppColors.gray,
    fontSize: 15,
    fontFamily: "K2DRegular",
    fontWeight: FontWeight.w500,
  );
}
