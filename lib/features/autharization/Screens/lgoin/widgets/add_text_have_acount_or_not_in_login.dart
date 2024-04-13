import 'package:flutter/material.dart';
import 'package:home_x/core/routing/const_routs.dart';
import 'package:home_x/core/util/styles.dart';

class AddDontHaveAcountOrNot extends StatelessWidget {
 const AddDontHaveAcountOrNot({ super.key});
 

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          " Don't have account ?",
          style: StylesApp.font15Madiam,
        ),
        //const SizedBox(width: 5),

        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, Routs.routRegisterScreen);
          },
          child:const Text("Sign Up",style:  TextStyle(color: Color(0xff8B78FF), fontSize: 18),),
        ),
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
// RichText(
//               textAlign: TextAlign.center,
//               text: TextSpan(children: [
//                 TextSpan(
//                   text: text1,
//                   style: StylesApp.font15Madiam,
//                 ),
//                 TextSpan(
//                   text: text2,
//                   style: StylesApp.font16Madiam, //
//                 )
//               ])),