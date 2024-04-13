// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_x/core/util/colors.dart';
import 'package:home_x/core/util/constant.dart';
import 'package:home_x/core/widgets/custom_material_bottons.dart';
import 'package:home_x/core/widgets/custom_text_field.dart';
import 'package:home_x/features/autharization/date/auth_register/auth_register_cubit.dart';

class RefactorCustomTextFormFieldAndAddValidationInRegisterScreen
    extends StatelessWidget {
  RefactorCustomTextFormFieldAndAddValidationInRegisterScreen({super.key});
  String? email;
  String? password;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          CustomTextFormField(
          
            lableText: 'User Name',
            prefixIcon: const Icon(Icons.person),
            inputType: TextInputType.name,
            validator: (value) {
              if (value!.isEmpty) {
                return " please inter user name";
              }
              return null;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextFormField(
            onChange: (date) {
              email = date;
            },
           
            lableText:AppStrings.lableTextemai,
            prefixIcon: const Icon(Icons.email_outlined),
            inputType: TextInputType.emailAddress,
            validator: (value) {
              if (value!.isEmpty) {
                return " please inter email";
              }
            },
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextFormField(
            lableText: AppStrings.lableTextPassword,
            onChange: (date) {
              password = date;
            },
          
            inputType: TextInputType.visiblePassword,
            prefixIcon: const Icon(Icons.lock),
           
            validator: (value) {
              if (value!.isEmpty) {
                return " please inter password";
              }
            },
          //  controller: TextEditingController(),
          ),
          const SizedBox(
            height: 50,
          ),
          CustomMaterialBottons(
              backgroundBottonsColors: AppColors.primaryColors,
              onPressed: () async {
                
                if (formKey.currentState!.validate()) {
                  BlocProvider.of<AppRegisterCubit>(context)
                      .userRegister(email: email!, password: password!);
                      // getIt<CacheHelper>()
                      // .saveData(key: "homeVisited", value: true);
                }
              },
              text: AppStrings.signUp),
        ],
      ),
    );
  }
}
