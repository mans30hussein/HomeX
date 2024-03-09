import 'package:flutter/material.dart';
import 'package:home_x/core/util/styles.dart';

class CustomMaterialBottons extends StatelessWidget {
  CustomMaterialBottons({
     this.backgroundBottonsColors,
    
    required this.onPressed,
    required this.text,
    super.key,
  });
  Function() onPressed;
  Color? backgroundBottonsColors;
  
  String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:18.0),
      child: MaterialButton(
         //constraints: BoxConstraints(maxWidth: 330 , maxHeight: double.infinity ),
        height: 50,
        minWidth: 330,
        
       // padding: EdgeInsets.only(left: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        color: backgroundBottonsColors,
        onPressed:onPressed,
        child:Text(text, style: StylesApp.styleBotton),
      ),
    );
  }
}
