import 'package:flutter/material.dart';
import 'package:home_x/features/home/Offic/OfficLighitng.dart';
import 'package:home_x/features/home/fan/fan%20_container.dart';
import 'package:home_x/features/home/gas/gas_container.dart';
import 'package:home_x/features/home/lighting/lighting_container.dart';
import 'package:home_x/features/home/bedRoom/bed_lighing_container.dart';
import 'package:home_x/features/home/plant/plant_container.dart';
import 'package:home_x/features/home/temp/temp_container.dart';
import 'package:home_x/features/onbourding/ui/onboarding_screen.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnbourdingScreen(),
    );
  }
}
