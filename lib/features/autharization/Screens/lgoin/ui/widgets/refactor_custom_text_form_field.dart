import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_x/core/util/colors.dart';
import 'package:home_x/core/widgets/custom_material_bottons.dart';
import 'package:home_x/features/autharization/date/auth_login/auth_cubit.dart';
import 'package:home_x/features/autharization/Screens/lgoin/ui/widgets/custom_text_field.dart';

import 'add_text_bottons_forget_password.dart';
import 'add_text_have_acount_or_not.dart';

class RefactorCustomTextFormFieldAndAddValidationsInLoginScreen
    extends StatelessWidget {
  RefactorCustomTextFormFieldAndAddValidationsInLoginScreen({super.key});
  String? email;
  String? password;
  bool isloaded = false;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        
        children: [
          CustomTextFormField(
            onChange: (date) {
              email = date;
            },
            hintText: "Email Adress",
            lableText: 'Email Adress',
            prefixIcon: const Icon(Icons.email_outlined),
            inputType: TextInputType.emailAddress,
            validator: (value) {
              if (value!.isEmpty) {
                return "please enter email";
              } else if (!value.contains('@gmail.com')) {
                return 'email not valid ';
              }
            },
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextFormField(
            // lableText: 'Password',
            onChange: (date) {
              password = date;
            },
            hintText: 'Password',
            inputType: TextInputType.visiblePassword,
            prefixIcon: const Icon(Icons.lock),
            suffixIcon: Icons.visibility_off,
            validator: (value) {
              if (value!.isEmpty) {
                return "please enter password";
              }
              // else if (!regexCapital.hasMatch(value)) {
              //   return 'should contain at least one upper case ';
              // } else if (!regexSmall.hasMatch(value)) {
              //   return ' should contain at least one lower case ';
              // }
              else if (value.length < 6) {
                return ' Must be at least 6 characters in length   ';
              }
            },
            //controller: TextEditingController(),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CustomMaterialBottons(
              backgroundBottonsColors: AppColors.primaryColors,
              onPressed: () async {
                if (formKey.currentState!.validate()) {
                  BlocProvider.of<AppLoginCubit>(context)
                      .userLogin(email: email!, password: password!);
                } else {}
              },
              text: 'Log In',
            ),
          ),
       
         const Center(child:  AddTextBottonForgetPassword()),
        ],
      ),
    );
  }
}
