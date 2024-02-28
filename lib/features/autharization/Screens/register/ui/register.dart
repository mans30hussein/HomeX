// ignore_for_file: must_be_immutable, use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:home_x/core/util/colors.dart';
import 'package:home_x/core/util/styles.dart';
import 'package:home_x/core/widgets/custom_material_bottons.dart';
import 'package:home_x/features/autharization/widgets/custom_text_field.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  final formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: const Text(
                  "Register",
                  style: StylesApp.loginTitle,
                ),
              ),
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
                  return null;
                },
                hintText: "Email Adress",
                lableText: 'Email Adress',
                prefixIcon: const Icon(Icons.email_outlined),
                inputType: TextInputType.emailAddress,
                validator: (value) {
                  if (value!.isEmpty) {
                    return " please inter email";
                  }
                  return null; 
                },
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFormField(
                // lableText: 'Password',
                onChange: (date) {
                  password = date;
                  return null;
                },
                hintText: 'Password',
                inputType: TextInputType.visiblePassword,
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: Icons.visibility_off,
                validator: (value) {
                  if (value!.isEmpty) {
                    return " please inter password";
                  }
                  return null; 
                },
                controller: TextEditingController(),
              ),
              const SizedBox(
                height: 50,
              ),
              CustomMaterialBottons(
                  backgroundBottonsColors: backgroundOnbourdingScreen,
                  onPressed: () async {
                    if(formKey.currentState!.validate()){
                      try {
                       await userRegister();
                      showSnackBars(
                          context, Text("Register Success"), Colors.green);
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'weak-password') {
                        showSnackBars(context, Text(e.code), Colors.red);
                      } else if (e.code == 'email-already-in-use') {
                        showSnackBars(context, Text(e.code), Colors.red);
                      }
                    } catch (e) {
                      showSnackBars(context, Text(e.toString()), Colors.red);
                    }

                    }
                    
                  },
                  text: 'Sign Up'),
            ],
          ),
        ),
      ),
    );
  }

  Future<UserCredential> userRegister() {
    return FirebaseAuth.instance
                        .createUserWithEmailAndPassword(
                      email: email!,
                      password: password!,
                    );
  }

  void showSnackBars(BuildContext context, Widget message, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: message,
      backgroundColor: color,
    ));
  }
}
