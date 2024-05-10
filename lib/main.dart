// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:home_x/core/services/services_locator.dart';
import 'package:home_x/firebase_options.dart';


import 'package:home_x/test.dart';
import 'core/shared_preference/cache_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setupServicesLocator();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await getIt<CacheHelper>().init();
  runApp(const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => MaterialApp(
          debugShowCheckedModeBanner: false,

          home: Test(),
          // initialRoute: Routs.routSplashScreen,
          // onGenerateRoute: SpatailRouter.generateRouts,
        ),
      ),
    );
  }
}
