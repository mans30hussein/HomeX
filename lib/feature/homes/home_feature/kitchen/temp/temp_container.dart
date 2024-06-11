// import 'package:flutter/material.dart';
// import 'package:home_x/core/util/colors.dart';
// import 'package:home_x/core/util/styles.dart';
// import 'package:home_x/core/util/svg_images.dart';

// // ignore: must_be_immutable
// class TempContainer extends StatefulWidget {
//    TempContainer({super.key, required this.temp});

//   bool isSwitched = false;
//   final double temp;
//   @override
//   State<TempContainer> createState() => _TempContainerState();
// }

// class _TempContainerState extends State<TempContainer> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       clipBehavior: Clip.hardEdge,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(22),
//       ),
//       height: 200,
//       width: 174,
//       child: Stack(
//         children: [
//           Positioned(top: 0, right: 0, child: SVGImges().tempEllipse),
//           Positioned(top: 0, right: 0, child: SVGImges().tempEllipse),
//           Positioned(
//             top: 50,
//             right: 30,
//             child: Text(

//               '${widget.temp!.toStringAsFixed(1)}°' ?? 36.5.toStringAsFixed(1) + '°',
//               style: StylesApp.font28Madiam.copyWith(fontSize: 22),
//             ),
//           ),
//           Positioned(
//               bottom: 10,
//               right: 15,
//               child: Row(
//                 children: [
//                   Text(
//                     'Safe',
//                     style: StylesApp.font28Madiam
//                         .copyWith(fontSize: 12, color: AppColors.babyblue),
//                   ),
//                   SVGImges().temp,
//                 ],
//               )),
//           Positioned(
//             bottom: 10,
//             left: 20,
//             child: Text(
//               'Temp',
//               style: StylesApp.font28Madiam.copyWith(fontSize: 20),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

// }

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:home_x/core/util/colors.dart';
import 'package:home_x/core/util/styles.dart';
import 'package:home_x/core/util/svg_images.dart';

class TempContainer extends StatefulWidget {
  const TempContainer({Key? key}) : super(key: key);

  @override
  State<TempContainer> createState() => _TempContainerState();
}

class _TempContainerState extends State<TempContainer> {
  final DatabaseReference _tempRef =
      FirebaseDatabase.instance.ref().child('esp1/sensors/lm');
  String _tempValue = 'Loading...';

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DatabaseEvent>(
      stream: _tempRef.onValue,
      builder: (BuildContext context, AsyncSnapshot<DatabaseEvent> snapshot) {
        if (snapshot.hasData) {
          final data = snapshot.data!.snapshot.value;
          _tempValue = data.toString();

          return Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(22),
            ),
            height: 200,
            width: 174,
            child: Stack(
              children: [
                Positioned(top: 0, right: 0, child: SVGImges().tempEllipse),
                Positioned(top: 0, right: 0, child: SVGImges().tempEllipse),
                Positioned(
                  top: 50,
                  right: 30,
                  child: Text(
                    '$_tempValue°',
                    style: StylesApp.font28Madiam.copyWith(fontSize: 22),
                  ),
                ),
                Positioned(
                    bottom: 10,
                    right: 15,
                    child: Row(
                      children: [
                        Text(
                          'Safe',
                          style: StylesApp.font28Madiam.copyWith(
                              fontSize: 12, color: AppColors.babyblue),
                        ),
                        SVGImges().temp,
                      ],
                    )),
                Positioned(
                  bottom: 10,
                  left: 20,
                  child: Text(
                    'Temp',
                    style: StylesApp.font28Madiam.copyWith(fontSize: 20),
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
