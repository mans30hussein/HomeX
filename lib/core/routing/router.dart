import 'package:flutter/material.dart';
import 'package:home_x/features/autharization/lgoin/ui/login_options.dart';
import 'package:home_x/features/onbourding/ui/onboarding.dart';
import 'package:home_x/features/splash/splash_screen.dart';

import 'const_routs.dart';

class SpatailRouter {
  static Route<dynamic> generateRouts(RouteSettings settings) {
    switch (settings.name) {
      case Routs.routSplashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routs.routOnbourdingScreen:
        return MaterialPageRoute(builder: (_) => const OnbourdingScreen());
      case Routs.routOptionsLoginScreen:
        return MaterialPageRoute(builder: (_) => const LoginOptions());
      default:
        return MaterialPageRoute(builder: (_) => const LoginOptions());
        
    }

   
  }
}
