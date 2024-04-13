import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:home_x/core/services/services_locator.dart';
import 'package:home_x/firebase_options.dart';
import 'core/routing/const_routs.dart';
import 'core/routing/router.dart';
import 'core/shared_preference/cache_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupServicesLocator();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  

  await getIt<CacheHelper>().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        
      ),
      debugShowCheckedModeBanner: false,
    //home: Test(),
      initialRoute: Routs.routSplashScreen,
      onGenerateRoute: SpatailRouter.generateRouts,
    );
  }
}
