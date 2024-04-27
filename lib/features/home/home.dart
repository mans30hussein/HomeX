// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables


import 'package:flutter/material.dart';

import 'package:home_x/features/home/kitchen.dart';
import 'package:home_x/features/home/office.dart';
import 'package:home_x/features/home/room.dart';

import 'widgets/home_view_body.dart';

class Home extends StatelessWidget {
  Home({super.key});
  int currentIndex = 0;
  List<Widget> Screens = [
    Room(),
    Office(),
    Kitchen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.amberAccent,

      body: ListView(
        children: [
          Column(
          children: [
            Row(
              children: [
                const Spacer(),
                // SvgPicture.asset(
                  
                // )
                // SvgPicture.asset(
                //   'assets/images/common_vector.svg',
                //   alignment: Alignment.topRight,
                // ),
              ],
            ),
            HomeViewBody(
        
            ),
           // Expanded(child: Screens[currentIndex]),
          ],
        ),
        ]
       
      ),
      // Center(
      //   child: _buildContent(),
      // ),
    );
  }
}
