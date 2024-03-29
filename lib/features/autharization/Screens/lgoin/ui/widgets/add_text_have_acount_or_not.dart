import 'package:flutter/material.dart';
import 'package:home_x/core/routing/const_routs.dart';
import 'package:home_x/core/util/styles.dart';

class AddTextHaveAcountOrNot extends StatelessWidget {
  AddTextHaveAcountOrNot({required this.text1, required this.text2,required this.onPressed, super.key});
  String text1;
  String text2;
  Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          textAlign: TextAlign.center,
          
          text:TextSpan(
            children: [
              TextSpan(
                text: text1,
               style: StylesApp.font15Madiam,
              ),
              
              TextSpan(
                text: text2,
                style: StylesApp.font16Madiam,//    
              )
            ]
          ) ),
        // Text(
        //   text1,
        //   style: const TextStyle(color: Colors.black),
        // ),
        // TextButton(
        //   onPressed: onPressed ,
        //   child: Text(
        //     text2,
        //     style: const TextStyle(color: Color(0xff8B78FF), fontSize: 18),
        //   ),
        // ),
      ],
    ));
  }
}
