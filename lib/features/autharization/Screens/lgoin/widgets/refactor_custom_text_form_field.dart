// ignore_for_file: must_be_immutable, sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_x/core/services/services_locator.dart';
import 'package:home_x/core/shared_preference/cache_helper.dart';
import 'package:home_x/core/util/colors.dart';
import 'package:home_x/core/widgets/custom_material_bottons.dart';
import 'package:home_x/features/autharization/date/auth_login/auth_cubit.dart';
import 'package:home_x/core/widgets/custom_text_field.dart';

import 'add_text_bottons_forget_password.dart';
import 'add_text_have_acount_or_not_in_login.dart';

class RefactorCustomTextFormFieldAndAddValidationsInLoginScreen
    extends StatefulWidget {
  RefactorCustomTextFormFieldAndAddValidationsInLoginScreen({super.key});

  @override
  State<RefactorCustomTextFormFieldAndAddValidationsInLoginScreen> createState() => _RefactorCustomTextFormFieldAndAddValidationsInLoginScreenState();
}

class _RefactorCustomTextFormFieldAndAddValidationsInLoginScreenState extends State<RefactorCustomTextFormFieldAndAddValidationsInLoginScreen> {
  String? email;

  String? password;

  bool isloaded = false;

  bool passwordVisible = false;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextFormField(
            onChange: (data) {
              email = data;
            },
            
            lableText: 'Email Adress',
            prefixIcon: const Icon(Icons.email_rounded),
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
            
            onChange: (data) {
              password = data;
            },
           
            lableText: 'Password',
            passwordVisible:passwordVisible,
            inputType: TextInputType.visiblePassword,
            prefixIcon: const Icon(Icons.lock),
            suffixIcon: IconButton(
                onPressed: () {
                  passwordVisible = !passwordVisible;
                  setState(() {
                    
                  });
                },
                icon: passwordVisible 
                    ? const Icon(Icons.visibility_off_outlined)
                    : const Icon(Icons.visibility_outlined)),
            // suffixPressed: () {
            //    BlocProvider.of<AppLoginCubit>(context).chanageModePassword();
            // },
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
          Container(child: AddTextBottonForgetPassword() , alignment: Alignment.centerRight,),
        
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CustomMaterialBottons(
             
              onPressed: () async {
                if (formKey.currentState!.validate()) {
                  getIt<CacheHelper>()
                      .saveData(key: "homeVisited", value: false);
                  BlocProvider.of<AppLoginCubit>(context)
                      .userLogin(email: email!, password: password!);
                } else {}
              },
              text: 'Log In',
            ),
          ),

        ],
      ),
    );
  }
}