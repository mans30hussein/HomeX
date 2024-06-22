import 'package:flutter/material.dart';
import 'package:home_x/feature/ai/photo_api.dart';
import 'package:home_x/feature/autharization/Screens/lgoin/ui/login_screen.dart';
import 'package:home_x/feature/autharization/Screens/register/wedget/drop_down.dart';
import 'package:home_x/feature/homes/homePage/views/home_page.dart';

import 'package:home_x/feature/homes/home_feature/bathroom/bathroom.dart';
import 'package:home_x/feature/homes/home_feature/bathroom/gas/gas_container.dart';
import 'package:home_x/feature/homes/home_feature/face%20reconation/web_view.dart';
import 'package:home_x/feature/homes/home_feature/kitchen/Lighting/kitchen_lighting.dart';
import 'package:home_x/feature/homes/home_feature/kitchen/temp/temp_container.dart';
import 'package:home_x/feature/homes/home_feature/plant/plant_container.dart';
import 'package:home_x/feature/homes/home_feature/weather/weather_widget.dart';
import 'package:home_x/feature/onbourding/ui/onboarding_screen.dart';
import 'package:home_x/feature/splash/splash_screen.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ApiPhoto(
          url: 'https://facerec-with-image.onrender.com/face_recognition',
        ),
      ),
    );
  }
}
