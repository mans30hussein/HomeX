import 'package:flutter/material.dart';
import 'package:home_x/core/util/app_assets.dart';
import 'package:home_x/features/autharization/Screens/lgoin/widgets/add_text_login_title.dart';
import 'package:home_x/features/autharization/Screens/lgoin/widgets/refactor_custom_text_form_field.dart';
import 'add_text_have_acount_or_not_in_login.dart';

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
          Center(child: Image.asset(Assets.assetsImagesAppIcon)),
        const  Center(child:  AddTextLoginTitle()),
          const SizedBox(
            height: 30,
          ),
          RefactorCustomTextFormFieldAndAddValidationsInLoginScreen(),
          const SizedBox(
            height: 40,
          ),     
           const AddDontHaveAcountOrNot(),
           
        ],
      ),
    );
  }
}
