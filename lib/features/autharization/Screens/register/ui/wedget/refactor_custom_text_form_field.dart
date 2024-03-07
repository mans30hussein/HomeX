// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_x/core/util/colors.dart';
import 'package:home_x/core/widgets/custom_material_bottons.dart';
import 'package:home_x/features/autharization/Screens/lgoin/ui/widgets/custom_text_field.dart';
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
            hintText: "User Name",
            lableText: 'User Name',
            prefixIcon: const Icon(Icons.person),
            inputType: TextInputType.name,
            validator: (value) {
              if (value!.isEmpty) {
                return " please iner user name";
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
            hintText: "Email Adress",
            lableText: 'Email Adress',
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
                return " please inter password";
              }
            },
            controller: TextEditingController(),
          ),
          const SizedBox(
            height: 50,
          ),
          CustomMaterialBottons(
              backgroundBottonsColors: backgroundOnbourdingScreen,
              onPressed: () async {
                if (formKey.currentState!.validate()) {
                  BlocProvider.of<AppRegisterCubit>(context)
                      .userRegister(email: email!, password: password!);
                }
              },
              text: 'Sign Up'),
        ],
      ),
    );
  }
}
