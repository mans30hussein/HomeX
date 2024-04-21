import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_x/core/util/assets.dart';
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
           SizedBox(
            height: 100.h,
          ),
          Center(child: Image.asset(Assets.logoApp)),
        const  Center(child:  AddTextLoginTitle()),
           SizedBox(
            height: 30.h,
          ),
          RefactorCustomTextFormFieldAndAddValidationsInLoginScreen(),
           SizedBox(
            height: 40.h,
          ),     
           const AddDontHaveAcountOrNot(),
           
        ],
      ),
    );
  }
}
