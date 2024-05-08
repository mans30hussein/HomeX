import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'gas/gas_container.dart';

class BathRoom extends StatelessWidget {
  const BathRoom({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GasContainer(gas: 30,),
        SizedBox(width: 16.w,),
        GasContainer(gas: 45,),
      ],
    );
  }
}