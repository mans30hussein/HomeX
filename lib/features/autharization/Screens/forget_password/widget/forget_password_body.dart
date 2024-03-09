import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_x/core/util/colors.dart';
import 'package:home_x/core/widgets/custom_material_bottons.dart';
import 'package:home_x/features/autharization/Screens/lgoin/ui/widgets/custom_text_field.dart';
import 'package:home_x/features/autharization/date/auth_forget_password/auth_cubit.dart';

class ForgetPasswordBodyScreen extends StatelessWidget {
  ForgetPasswordBodyScreen({super.key});
  final formKey = GlobalKey<FormState>();
  String? email;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
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
                  return " please inter email";
                }
              },
            ),
            const SizedBox(
              height: 30,
            ),
            CustomMaterialBottons(
                backgroundBottonsColors:AppColors.primaryColors,
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    BlocProvider.of<AppForgetPasswordCubit>(context)
                        .resetPasswordLink(email: email!);
                  }
                },
                text: 'send password Link verification'),
          ]),
    );
  }
}
