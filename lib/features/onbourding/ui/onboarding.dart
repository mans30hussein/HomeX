import 'package:flutter/material.dart';
import 'package:home_x/core/util/assets.dart';
import 'package:home_x/core/util/colors.dart';
import 'package:home_x/features/onbourding/logic/onbourding_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'onbourding_item.dart';

class OnbourdingScreen extends StatefulWidget {
  const OnbourdingScreen({super.key});
  static const routName = "OnbourdingScreen";

  @override
  State<OnbourdingScreen> createState() => _OnbourdingScreenState();
}

class _OnbourdingScreenState extends State<OnbourdingScreen> {
  var bourdController = PageController();
  bool islast = false;
  List<OnbourdingModel> bourding = [
    OnbourdingModel(image: "", name: 'Home X 1'),
    OnbourdingModel(image: "", name: 'Home X 2'),
    OnbourdingModel(image: "", name: 'Home X 3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            bourdController.nextPage(
                duration: Duration(seconds: 3),
                curve: Curves.fastLinearToSlowEaseIn);
          },
          child: Icon(Icons.arrow_forward_ios)),
      backgroundColor: backgroundOnbourdingScreen,
      appBar: AppBar(backgroundColor: Colors.transparent, actions: [
        TextButton(
            onPressed: () {},
            child: const Text(
              "Skip",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ))
      ]),
      body: Column(
      // mainAxisAlignment: MainAxisAlignment.center,
              
      children: [
        const SizedBox(
          height: 150,
        ),
        const Text(
          "Home X",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        const SizedBox(
          height: 120,
        ),
       
        Expanded(
            child: PageView.builder(
          scrollDirection: Axis.horizontal,
          controller: bourdController,
          itemCount: bourding.length,
          physics: const BouncingScrollPhysics(),
          // onPageChanged: (value) {
          //   if (value == bourding.length - 1) {
          //     setState(() {
          //       islast = true;
          //     });
              
          //     print('last');
          //   } else {
          //     setState(() {
          //       islast = false;
          //     });
          //     print("not last");
          //   }
          // },
          itemBuilder: (context, index) => OnbourdingItem(
            model: bourding[index],
          ),
        )),
      
        
      ],
              ),
    );
  }
}
