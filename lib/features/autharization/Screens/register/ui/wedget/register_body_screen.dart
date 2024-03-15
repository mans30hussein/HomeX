import 'package:flutter/material.dart';
import 'package:home_x/core/routing/const_routs.dart';
import 'package:home_x/core/util/assets.dart';
import 'package:home_x/features/autharization/Screens/lgoin/ui/widgets/add_text_have_acount_or_not.dart';
import 'package:home_x/features/autharization/Screens/register/ui/wedget/refactor_custom_text_form_field.dart';
import 'package:home_x/features/autharization/Screens/register/ui/wedget/add_text_rigester_title.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class RegisterBodyScreen extends StatelessWidget {
  const RegisterBodyScreen({
    super.key,
  });

  final bool isLoaded = false;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoaded,
      child: Scaffold(
        backgroundColor: const Color(0xffCFCFCF),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 100,
                ),
                const AddTextRegisterTitle(),
                RefactorCustomTextFormFieldAndAddValidationInRegisterScreen(),
                const SizedBox(
                  height: 20,
                ),
                AddTextHaveAcountOrNot(
                      onPressed: () {
            Navigator.pushNamed(context, Routs.routLoginScreen);
          },
            text1: " Do you have acount ?",
            text2: "Sign in",
          ),
           const SizedBox(
                  height: 80,
                ),
                Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: Image.asset(
                      Assets.googleImage,
                      height: 50,
                      width: 50,
                    )),
                    
              ],
            ),
          ),
        ),
      ),
    );
  }
}
