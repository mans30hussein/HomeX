// ignore_for_file: use_build_context_synchronously, must_be_immutable

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_x/core/routing/const_routs.dart';
import 'package:home_x/core/util/colors.dart';
import 'package:home_x/features/autharization/date/auth_login/auth_cubit.dart';
import 'package:home_x/features/autharization/date/auth_login/auth_state.dart';
import 'package:home_x/features/autharization/Screens/lgoin/widgets/login_body_screen.dart';
import 'package:home_x/features/autharization/Screens/lgoin/widgets/show_snack_bar.dart';
import 'package:home_x/features/home/home.dart';
//import 'package:home_x/login_2/login2_screen/widget_2/login_body_screen.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var controller = TextEditingController();

  final formKey = GlobalKey<FormState>();

  RegExp regexCapital = RegExp(r'^(?=.*?[A-Z])');

  RegExp regexSmall = RegExp(r'^(?=.*?[a-z])');

  RegExp regexNumber = RegExp(r'^(?=.*?[0-9])');

  String? email;

  String? password;

  bool isloaded = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppLoginCubit, AppLoginState>(
      listener: (context, state) {
        if (state is AppLoginLoadingState) {
          
          isloaded = true;
        } else if (state is AppLoginSuccessState) {
         // Navigator.pushNamed(context, Routs.routHomeScreen);
         if(FirebaseAuth.instance.currentUser!.emailVerified ){
          
            Navigator.pushReplacementNamed(context, Routs.routHomeScreen);
            // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Home()));
          }else{
            showSnackBars(
              context,
              const Text('please check your email to verify acount'),
              const Color.fromRGBO(244, 67, 54, 1));
          }
          isloaded = false;
        } else if (state is AppLoginErrorState) {
          showSnackBars(context,const Text("Please check your email and password"), Colors.red);
          isloaded = false;
        }
      },
      builder: (context, state) => ModalProgressHUD(
        inAsyncCall: isloaded,
        child: const  Scaffold(
        backgroundColor: AppColors.authBackground,
          body:  SingleChildScrollView(child: LoginBodyScreen()), 
        ),
      ),
    );
  }
}

