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
       
        // ),
      ],
    ));
  }
}
