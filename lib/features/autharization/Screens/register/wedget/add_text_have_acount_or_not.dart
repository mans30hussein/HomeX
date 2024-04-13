import 'package:flutter/material.dart';
import 'package:home_x/core/routing/const_routs.dart';
import 'package:home_x/core/util/styles.dart';

class AddTextDoYouHaveAcountOrNot extends StatelessWidget {
 const AddTextDoYouHaveAcountOrNot({ super.key});
 

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        
        const Text(
          " Do you have account ?",
          style: StylesApp.font15Madiam,
        ),
        const SizedBox(width: 5),

        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, Routs.routLoginScreen);
          },
          child:const Text("Sign In",style: const TextStyle(color: Color(0xff8B78FF), fontSize: 18),),
        ),
       
      ],
    ));
  }
}
