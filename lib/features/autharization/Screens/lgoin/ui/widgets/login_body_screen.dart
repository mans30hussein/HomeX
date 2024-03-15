import 'package:flutter/material.dart';
import 'package:home_x/core/routing/const_routs.dart';
import 'package:home_x/core/util/assets.dart';
import 'package:home_x/core/util/constant.dart';
import 'package:home_x/features/autharization/Screens/lgoin/ui/widgets/add_text_login_title.dart';
import 'package:home_x/features/autharization/Screens/lgoin/ui/widgets/refactor_custom_text_form_field.dart';
import 'add_text_have_acount_or_not.dart';

class LoginBodyScreen extends StatelessWidget {
   const LoginBodyScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 100,
          ),
          Center(child: Image.asset(Assets.logoApp)),
        const  Center(child:  AddTextLoginTitle()),
          const SizedBox(
            height: 30,
          ),
          RefactorCustomTextFormFieldAndAddValidationsInLoginScreen(),
          const SizedBox(
            height: 40,
          ),     
           AddTextHaveAcountOrNot(
          onPressed: () {
            Navigator.pushNamed(context, Routs.routRegisterScreen);
          },
            text1: AppStrings.dontHaveAcount,
            text2: AppStrings.signUp,
          ),
           
        ],
      ),
    );
  }
}
