import 'package:flutter/material.dart';
import 'package:home_x/core/routing/const_routs.dart';
import 'package:home_x/core/util/assets.dart';
import 'package:home_x/core/util/colors.dart';
import 'package:home_x/core/widgets/custom_material_bottons.dart';

class LoginOptions extends StatelessWidget {
  const LoginOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        backgroundOnbourdingScreen,
        backgroundsecandColorScreen,
        //  backgroundSplashScreen,
      ])),
      child: Scaffold(
        body: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 160,
              ),
              Center(child: Image.asset(logoApp)),
              const SizedBox(
                height: 160,
              ),
              CustomMaterialBottons(
                //textColor: Colors.white,
                backgroundBottonsColors: Color(0xff92A4E3),
                onPressed: () {
                  Navigator.pushNamed(context, Routs.routLoginScreen);
                },
                text: 'Log in',
              ),
              const SizedBox(
                height: 20,
              ),
              CustomMaterialBottons( 
                // textColor: Colors.white,
                backgroundBottonsColors: Color(0xff92A4E3),
                onPressed: () {
                  Navigator.pushNamed(context, Routs.routRegisterScreen);
                },
                text: 'Register',
              ),
            ]),
      ),
    );
  }
}
