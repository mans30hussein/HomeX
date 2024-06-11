import 'package:flutter/material.dart';
import 'package:home_x/feature/homes/homePage/views/home_page.dart';

import 'package:home_x/feature/homes/home_feature/bathroom/bathroom.dart';
import 'package:home_x/feature/homes/home_feature/bathroom/gas/gas_container.dart';
import 'package:home_x/feature/homes/home_feature/kitchen/temp/temp_container.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TempContainer(
        ),
      ),
    );
  }
}
