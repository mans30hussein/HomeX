import 'dart:async';

import 'package:flutter/material.dart';
import 'package:home_x/core/util/assets.dart';
import 'package:home_x/features/autharization/date/auth_login/auth_cubit.dart';
import 'package:home_x/test_2.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  bool passwordVisible = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Test2(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Show or Hide Password in TextField'),
        ),
        body: Column(
          children: [
           const Text("Hello"),
            Center(child: Hero(
              tag:Assets.logoApp ,
              child: Image.asset(Assets.logoApp),
              )),
          ],
        ));
  }
}
