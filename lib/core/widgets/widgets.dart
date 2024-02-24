import 'package:flutter/material.dart';

class CustomMaterialBottons extends StatelessWidget {
  CustomMaterialBottons({
    required this.backgroundBottonsColors,
    required this.textColor,
    required this.onPressed,
    required this.text,
    super.key,
  });
  Function() onPressed;
  Color backgroundBottonsColors;
  Color textColor ;
  String text;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 50,
      minWidth: 300,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      color: backgroundBottonsColors,
      onPressed:onPressed,
      child:Text(text, style: TextStyle(
        fontSize: 20,
        color:textColor, 
      ),),
    );
  }
}
