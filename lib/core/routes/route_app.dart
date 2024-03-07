import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_x/features/onbourding/ui/onboarding_screen.dart';
import 'package:home_x/features/splash/splash_screen.dart';

final GoRouter ourRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
    ),
    GoRoute(
      path: '/onBoarding',
      builder: (BuildContext context, GoRouterState state) {
        return const OnbourdingScreen();
      },
    ),
  ],
);
