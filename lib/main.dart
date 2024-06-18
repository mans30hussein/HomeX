// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:home_x/core/routing/const_routs.dart';
import 'package:home_x/core/routing/router.dart';
import 'package:home_x/core/services/services_locator.dart';
import 'package:home_x/feature/autharization/Screens/lgoin/ui/login_screen.dart';
import 'package:home_x/feature/splash/splash_screen.dart';
import 'package:home_x/firebase_options.dart';
import 'package:home_x/notifications/notifications.dart';

import 'package:home_x/test.dart';
import 'core/shared_preference/cache_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'feature/homes/icon_navigation/icon_navigate.dart';
import 'feature/homes/homePage/views/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setupServicesLocator();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await getIt<CacheHelper>().init();
  await LocalNotification.init();
  runApp(
    const MyApp(),
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
// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:home_x/core/services/services_locator.dart';
// import 'package:home_x/core/shared_preference/cache_helper.dart';
// import 'package:home_x/firebase_options.dart';
// import 'package:home_x/feature/splash/splash_screen.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// // import 'package:home_x/notifications/local_notification.dart';
// import 'package:home_x/notifications/notifications.dart';
// import 'package:home_x/test.dart'; // import LocalNotification

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();

//   setupServicesLocator();

//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );

//   await getIt<CacheHelper>().init();

//   // Initialize local notifications
//   await LocalNotification.init();

//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: ScreenUtilInit(
//         designSize: const Size(360, 690),
//         minTextAdapt: true,
//         splitScreenMode: true,
//         builder: (context, child) => MaterialApp(
//           debugShowCheckedModeBanner: false,
//           home: Test(),
//         ),
//       ),
//     );
//   }
// }
