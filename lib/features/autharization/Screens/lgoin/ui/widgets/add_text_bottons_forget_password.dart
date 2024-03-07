import 'package:flutter/material.dart';
import 'package:home_x/core/routing/const_routs.dart';

class AddTextBottonForgetPassword extends StatelessWidget {
  const AddTextBottonForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      padding: EdgeInsets.symmetric(horizontal:24),
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(
              context, Routs.routForgetPasswordScreen);
        },
        child: const Text("Forget Password ?"),
      ),
    );
  }
}