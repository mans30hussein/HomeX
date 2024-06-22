import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:home_x/core/util/colors.dart';
import 'package:home_x/core/util/styles.dart';
import 'package:home_x/core/util/svg_images.dart';
import 'package:home_x/notifications/notifications.dart';

class PlantContainer extends StatefulWidget {
  const PlantContainer({Key? key}) : super(key: key);

  @override
  State<PlantContainer> createState() => _PlantContainerState();
}

class _PlantContainerState extends State<PlantContainer> {
  final DatabaseReference _sensorsRef =
      FirebaseDatabase.instance.ref().child('esp1/sensors');
  int _pumpValue = 0;
  String _soilValue = 'Loading...';

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DatabaseEvent>(
      stream: _sensorsRef.onValue,
      builder: (BuildContext context, AsyncSnapshot<DatabaseEvent> snapshot) {
        if (snapshot.hasData) {
          final Map data = snapshot.data?.snapshot.value as Map;
          _pumpValue = data['WaterPump'];
          _soilValue = data['soil'].toString();
          // var pumpValueInt = int.tryParse(_pumpValue);
          if (_pumpValue >= 1) {
            print('Buzzer is active, sending notification');
            LocalNotification.basicNotification(
                'Garden 🪴', 'Garden soil is dry');
          }
          return Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(22),
            ),
            height: 220,
            width: 240,
            child: Stack(
              children: [
                Positioned(top: 0, right: 0, child: SVGImges().plantEllipse),
                Positioned(top: 30, right: 25, child: SVGImges().plant),
                Positioned(
                  bottom: 16,
                  left: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Soil Moisture',
                        style: StylesApp.font28Madiam.copyWith(fontSize: 16),
                      ),
                      const SizedBox(width: 40),
                      Text(
                        _soilValue == '0' ? 'low' : 'moistured',
                        style: StylesApp.font28Madiam
                            .copyWith(fontSize: 16, color: AppColors.babyblue),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 40,
                  left: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Water Pump',
                        style: StylesApp.font28Madiam.copyWith(fontSize: 16),
                      ),
                      const SizedBox(width: 40),
                      // هنا الزرار بتاع احمد مكان التيكست ده
                      Text(
                        '$_pumpValue',
                        style: StylesApp.font28Madiam
                            .copyWith(fontSize: 16, color: AppColors.babyblue),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          return const Text('Loading...');
        }
      },
    );
  }
}
