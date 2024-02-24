import 'package:flutter/material.dart';
import 'package:home_x/core/util/assets.dart';
import 'package:home_x/core/widgets/widgets.dart';

class LoginOptions extends StatelessWidget {
  const LoginOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: LinearGradient(colors: [])),
      child: Scaffold(
        body: Column(
         // mainAxisAlignment: MainAxisAlignment.center,
          children: [
          SizedBox(height: 160,),
          Center(child: Image.asset(logoApp)),
          SizedBox(height: 160,),
          CustomMaterialBottons(
            textColor: Colors.white,
            backgroundBottonsColors: Colors.grey,
            onPressed: (){},
            text: 'Log in',
          ),
          SizedBox(height: 20,),
          CustomMaterialBottons(
            textColor: Colors.white,
            backgroundBottonsColors: Colors.green,
            onPressed: (){},
            text: 'Log in',
          ),
       
        ]),
      ),
    );
  }
}

