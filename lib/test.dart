import 'package:flutter/material.dart';
import 'package:home_x/feature/autharization/Screens/lgoin/ui/login_screen.dart';
import 'package:home_x/feature/homes/homePage/views/home_page.dart';

import 'package:home_x/feature/homes/home_feature/bathroom/bathroom.dart';
import 'package:home_x/feature/homes/home_feature/bathroom/gas/gas_container.dart';
import 'package:home_x/feature/homes/home_feature/kitchen/Lighting/kitchen_lighting.dart';
import 'package:home_x/feature/homes/home_feature/kitchen/temp/temp_container.dart';
import 'package:home_x/feature/homes/home_feature/plant/plant_container.dart';
import 'package:home_x/feature/homes/home_feature/weather/weather_widget.dart';
import 'package:home_x/feature/onbourding/ui/onboarding_screen.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:const GasContainer(),
      ),
    );
  }
}
