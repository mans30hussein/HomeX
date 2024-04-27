// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_x/features/home/kitchen.dart';
import 'package:home_x/features/home/office.dart';
import 'package:home_x/features/home/widgets/build_text_list_view.dart';

import '../room.dart';
import 'custom_icon.dart';
import 'custom_user_info.dart';

class HomeViewBody extends StatelessWidget {
  HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 18.r),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomIcons(),
          CustomUserInfo(),
          SizedBox(
            height: 25.h,
          ),
          BuildTextListView(),
          SizedBox(
            height: 25.h,
          ),
          // PageViewTranstion(),
          // Container(
          //   height: 60.h,
          //   width: double.infinity,
          //   color: Colors.red,
          // )
        ],
      ),
    );
  }
}

class PageViewTranstion extends StatefulWidget {
  const PageViewTranstion({super.key});

  @override
  State<PageViewTranstion> createState() => _PageViewTranstionState();
}

class _PageViewTranstionState extends State<PageViewTranstion> {
  int _selectedIndex = 0;
  List<Widget> Screens = [
    Room(),
    Office(),
    Kitchen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        itemCount: 3,
        controller: PageController(initialPage: _selectedIndex),
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        itemBuilder: (context, index) {
          return Screens[index];
        },
      ),
    );
  }
}
