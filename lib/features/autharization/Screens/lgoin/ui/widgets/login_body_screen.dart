import 'package:flutter/material.dart';
import 'package:home_x/core/util/assets.dart';
import 'package:home_x/core/widgets/custom_material_bottons.dart';
import 'package:home_x/features/autharization/Screens/lgoin/ui/widgets/add_text_login_title.dart';
import 'package:home_x/features/autharization/Screens/lgoin/ui/widgets/refactor_custom_text_form_field.dart';

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
          const AddTextLoginTitle(),
          const SizedBox(
            height: 30,
          ),
          RefactorCustomTextFormFieldAndAddValidationsInLoginScreen(),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: () {},
              child:  Row(
                children: [
                  const Text("Login with google"),

                  Image.asset(googleImage , height: 50,width: 50, ),
                  ],

              )),
        ],
      ),
    );
  }
}
