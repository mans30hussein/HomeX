import 'package:flutter/material.dart';
import 'package:home_x/core/util/app_assets.dart';
import 'package:home_x/core/util/svg_images.dart';
import 'package:home_x/features/home/Office/OfficeLighitng.dart';
import 'package:home_x/features/home/bathRoom/bath_lighting.dart';
import 'package:home_x/features/home/bathRoom/gas/gas_container.dart';
import 'package:home_x/features/home/bedRoom/bed_lighing_container.dart';
import 'package:home_x/features/home/kitchen/kitchen_lighting.dart';
import 'package:home_x/features/home/kitchen/temp/temp_container.dart';
import 'package:home_x/features/home/weather/weather_widget.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Weather(
          cityName: 'ismailia',
        ),
      ),
    );
  }
}
