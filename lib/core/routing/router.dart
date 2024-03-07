import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:home_x/core/services/services_locator.dart';
import 'package:home_x/features/autharization/Screens/forget_password/forget_password_screen.dart';
import 'package:home_x/features/autharization/date/auth_forget_password/auth_cubit.dart';
import 'package:home_x/features/autharization/date/auth_login/auth_cubit.dart';
import 'package:home_x/features/autharization/Screens/lgoin/ui/login_options.dart';
import 'package:home_x/features/autharization/Screens/lgoin/ui/login_screen.dart';
import 'package:home_x/features/autharization/date/auth_register/auth_register_cubit.dart';
import 'package:home_x/features/autharization/Screens/register/ui/register.dart';
import 'package:home_x/features/home/home.dart';

import 'const_routs.dart';

class SpatailRouter {
  static Route<dynamic> generateRouts(RouteSettings settings) {
    switch (settings.name) {
/////////////////////////////// Splash and Onbourding Screen ////////////////////////////////////////////////
      
    
///////////////////////////// Login and Register //////////////////////////////////////////////////
      case Routs.routOptionsLoginScreen:
        return MaterialPageRoute(builder: (_) => BlocProvider<AppLoginCubit>(
          create: (context) => AppLoginCubit(),
          child: const LoginOptions()));


      case Routs.routLoginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<AppLoginCubit>(
            create: (context) => getIt<AppLoginCubit>(),
            child: LoginScreen()
            ),
        );

     
      case Routs.routRegisterScreen:
        return MaterialPageRoute(builder: (_) => BlocProvider<AppRegisterCubit>(
          //create: (context) => AppRegisterCubit(),
          create: (context) => getIt2<AppRegisterCubit>(),
          child: RegisterScreen()));

      case Routs.routForgetPasswordScreen:
        return MaterialPageRoute(builder: (_) => BlocProvider<AppForgetPasswordCubit>(
          create: (context) =>getIt3<AppForgetPasswordCubit>(),
          child:ForgetPassword(),
        ));
/////////////////////////////// Home Screen ////////////////////////////////////
      case Routs.routHomeScreen:
        return MaterialPageRoute(builder: (_) => Home());

 ///////////////////////////////// Default /////////////////////////////////////////////////
      default:
        return MaterialPageRoute(builder: (_) => const LoginOptions());
    }
  }
}
