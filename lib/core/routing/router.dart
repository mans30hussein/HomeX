import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_x/core/services/services_locator.dart';
import 'package:home_x/features/autharization/Screens/forget_password/forget_password_screen.dart';
import 'package:home_x/features/autharization/date/auth_forget_password/auth_cubit.dart';
import 'package:home_x/features/autharization/date/auth_login/auth_cubit.dart';
import 'package:home_x/features/autharization/Screens/lgoin/ui/login_screen.dart';
import 'package:home_x/features/autharization/date/auth_register/auth_register_cubit.dart';
import 'package:home_x/features/autharization/Screens/register/ui/register.dart';
import 'package:home_x/features/home/home.dart';
import 'package:home_x/features/onbourding/ui/onboarding_screen.dart';
import 'package:home_x/features/splash/splash_screen.dart';

import 'const_routs.dart';

class SpatailRouter {
  static Route<dynamic> generateRouts(RouteSettings settings) {
    switch (settings.name) {
/////////////////////////////// Splash and Onbourding Screen ////////////////////////////////////////////////
      
      case Routs.routSplashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routs.routOnbourdingScreen:
        return MaterialPageRoute(builder: (_) => const OnbourdingScreen()); 
///////////////////////////// Login and Register //////////////////////////////////////////////////
      
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
        return MaterialPageRoute(builder: (_) =>const Home());

 ///////////////////////////////// Default /////////////////////////////////////////////////
      default:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
    }
  }
}

    //   default:
    //     return MaterialPageRoute(builder: (_) => const LoginOptions());
    // }