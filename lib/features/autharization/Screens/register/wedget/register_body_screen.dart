import 'package:flutter/material.dart';
import 'package:home_x/core/util/assets.dart';
import 'package:home_x/core/util/colors.dart';
import 'package:home_x/features/autharization/Screens/register/wedget/refactor_custom_text_form_field.dart';
import 'package:home_x/features/autharization/Screens/register/wedget/add_text_rigester_title.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'add_text_have_acount_or_not.dart';

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

        backgroundColor: AppColors.authBackground,
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
                Center(child: Image.asset(Assets.logoApp)),
                const Center(child:  AddTextRegisterTitle()),
                RefactorCustomTextFormFieldAndAddValidationInRegisterScreen(),
                const SizedBox(
                  height: 20,
                ),
            const    AddTextDoYouHaveAcountOrNot(),
          const SizedBox(height: 20,),
                Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: Image.asset(
                      Assets.googleImage,
                
                      height: 100,
                      width: 100,
                    )),
                   
                    
              ],
            ),
          ),
        ),
      ),
    );
  }
}
