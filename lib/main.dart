
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:home_x/core/services/services_locator.dart';
import 'core/routing/const_routs.dart';
import 'core/routing/router.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupServicesLocator();
  // await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // FirebaseAuth.instance.authStateChanges().listen((User? user){
  //   if(user == null){
  //      print('User is currently signed out!');
  //   }
  //   else{
  //      print('User is currently signed in!');
  //   }
  // });

  await getIt<CacheHelper>().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      //home: Login2Screen(),
      initialRoute: Routs.routOptionsLoginScreen,
      onGenerateRoute: SpatailRouter.generateRouts,
    );
  }
}
