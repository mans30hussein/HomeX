// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:home_x/core/routing/const_routs.dart';
import 'package:home_x/core/util/colors.dart';
import 'package:home_x/core/util/fonts.dart';
import 'package:home_x/core/util/styles.dart';
import 'package:home_x/core/widgets/custom_material_bottons.dart';
import 'package:home_x/features/autharization/widgets/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  var controller = TextEditingController();
  final formKey = GlobalKey<FormState>();
  RegExp regexCapital = RegExp(r'^(?=.*?[A-Z])');
  RegExp regexSmall = RegExp(r'^(?=.*?[a-z])');
  RegExp regexNumber = RegExp(r'^(?=.*?[0-9])');
  RegExp regexChar = RegExp(r'^(?=.*?[!@#\$&*~]).{8,}$');
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
                  "Log In",
                  style: StylesApp.loginTitle,
                ),
              ),
              const SizedBox(
                height: 30,
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
                    return "please enter password";
                  }
                  // else if (!regexCapital.hasMatch(value)) {
                  //   return 'should contain at least one upper case ';
                  // }
                  // else if (!regexSmall.hasMatch(value)) {
                  //   return ' should contain at least one lower case ';
                  // }

                  // else if (!regexChar.hasMatch(value)) {
                  //   return ' should contain at least one Special character ';
                  // }
                  else if (value.length < 6) {
                    return ' Must be at least 6 characters in length   ';
                  }
                },
                //controller: TextEditingController(),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forget Password ?",
                        style: TextStyle(fontWeight: FontWieghtHelper.mediam),
                      ))),
              const SizedBox(
                height: 50,
              ),
              CustomMaterialBottons(
                  backgroundBottonsColors: backgroundOnbourdingScreen,
                  onPressed: () async {
                    if (formKey.currentState!.validate()) {
                      try {
                        await userLogin();
                        showSnackBars(
                            context, Text("Login Success"), Colors.green);
                        Navigator.pushNamed(context, Routs.routHomeScreen);
                      } on FirebaseAuthException catch (e) {
                        print(e.code);
                        if (e.code == 'user-not-found') {
                          showSnackBars(context, Text(e.code), Colors.red);
                        } else if (e.code == 'wrong-password') {
                          print(e.code);
                          showSnackBars(context, Text(e.code), Colors.red);
                        } else {
                          showSnackBars(
                              context,
                              Text("check your email and password"),
                              Colors.red);
                        }
                      } catch (e) {
                        showSnackBars(context, Text(e.toString()), Colors.red);
                        print("thare was an anather error");
                      }
                    }
                  },
                  text: 'Log In')
            ],
          ),
        ),
      ),
    );
  }

  void showSnackBars(BuildContext context, Widget message, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: message,
      backgroundColor: color,
    ));
  }

  Future<void> userLogin() async {
    UserCredential credential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(
            email: email!, password: password!);
  }
}
