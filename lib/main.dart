import 'package:flutter/material.dart';
import 'package:home_x/core/routes/route_app.dart';
import 'package:home_x/data/services/cache_helper.dart';
import 'package:home_x/services/service_lockator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  await getIt<CacheHelper>().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: ourRouter,
    );
  }
}
