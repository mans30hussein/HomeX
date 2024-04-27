import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildTextListView extends StatelessWidget {
  BuildTextListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60.h,
        width: double.infinity,
        decoration: buildDecorationFirtContainer(),
        child: CustomListText());
  }

  BoxDecoration buildDecorationFirtContainer() {
    return BoxDecoration(
      color: Colors.grey.shade200, // backgroundColor of list view
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        bottomLeft: Radius.circular(20),
      ),
    );
  }
}

class CustomListText extends StatefulWidget {
  CustomListText({
    super.key,
  });

  @override
  State<CustomListText> createState() => _CustomListState();
}

class _CustomListState extends State<CustomListText> {
  List<String> list = [
    // "reseptions",
    "Room",
    "Office",
    "Kitchen",
  ];

  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }

  @override
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: list.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
              child: InkWell(
            onTap: () {
              setState(() {
                currentIndex = index;
              });
            },
            child: Container(
                height: 30.h,
                width: 100.h,
                alignment: Alignment.center,
                decoration: buildDecorationSecondContainer(),
                child: Text(
                  list[index],
                  style: TextStyle(
                      fontSize: currentIndex == index ? 20.sp : 15.sp,
                      fontWeight: FontWeight.w600,
                      color: currentIndex == index
                          ? const Color(0xff7885FF)
                          : const Color(0xff9FCBFF)),
                )
                ),
          )),
        );
      },
    );
  }

  BoxDecoration buildDecorationSecondContainer() {
    return BoxDecoration(
      color: Colors.grey.shade50,
      borderRadius: BorderRadius.circular(20),
    );
  }
}
