import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_x/feature/homes/home_feature/kitchen/temp/temp_container.dart';

class Ketchen extends StatelessWidget {
   Ketchen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TempContainer(
        ),
        SizedBox(width: 16.w,),
        TempContainer(
        ),
      ],
    );
  }
}