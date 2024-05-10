// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:home_x/feature/homes/homePage/views/widget_home/home_view_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  List<Widget> screens = [
    // const HomePage(),
    const Screen1(),
    const Screen2(),
    const Screen3(),
  ];
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor:  Color(0xffF1F6FB),
        body:    HomePageBody(),
        );
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Screen 2'),
      ),
    );
  }
}

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Screen 3'),
      ),
    );
  }
}

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Text('Screen 1'),
    ));
  }
}
