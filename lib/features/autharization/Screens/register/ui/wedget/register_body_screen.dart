import 'package:flutter/material.dart';
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
      child:  Scaffold(
        body: Padding(
          padding:  const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AddTextRegisterTitle(),
               
             
              RefactorCustomTextFormFieldAndAddValidationInRegisterScreen(),
            ],
          ),
        ),
      ),
    );
  }
}

