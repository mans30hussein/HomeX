import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_x/feature/homes/homePage/views/home_page.dart';

class NavigationIcon extends StatefulWidget {
  const NavigationIcon({super.key});

  @override
  State<NavigationIcon> createState() => _NavigationState();
}

class _NavigationState extends State<NavigationIcon> {
  int selectedIndex = 0;
  List<Widget> screens = [
    // const HomePage(),
    const HomePage(),
    const Screen2(),
    const Screen3(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF1F6FB),
        body: Stack(
          children: [
            screens[selectedIndex],
            //    const HomePageBody(),
            Positioned(
              left: 40,
              top: 660,
              child: Container(
                height: 80.h,
                width: 300.w,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(22),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    selectedIndex == 0
                        ? Container(
                            height: 60,
                            width: 60,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  selectedIndex = 0;
                                });
                              },
                              icon: const Icon(
                                Icons.home,
                                size: 40,
                                // color: selectedIndex == 1 ? Colors.white : Colors.grey, // Highlight selected icon
                              ),
                            ),
                          )
                        : IconButton(
                            onPressed: () {
                              setState(() {
                                selectedIndex = 0;
                              });
                            },
                            icon: const Icon(
                              Icons.home,
                              size: 40,
                              // color: selectedIndex == 0 ? Colors.white : Colors.grey, // Highlight selected icon
                            ),
                          ),
                    const Spacer(),
                    selectedIndex == 1
                        ? Container(
                            height: 60,
                            width: 60,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              // borderRadius: BorderRadius.circular(12),
                            ),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  selectedIndex = 1;
                                });
                              },
                              icon: const Icon(
                                Icons.settings,
                                size: 40,
                                // color: selectedIndex == 1 ? Colors.white : Colors.grey, // Highlight selected icon
                              ),
                            ),
                          )
                        : IconButton(
                            onPressed: () {
                              setState(() {
                                selectedIndex = 1;
                              });
                            },
                            icon: const Icon(
                              Icons.settings,
                              size: 40,
                              // color: selectedIndex == 1 ? Colors.white : Colors.grey, // Highlight selected icon
                            ),
                          ),
                    const Spacer(),
                    selectedIndex == 2
                        ? Container(
                            height: 60,
                            width: 60,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              // borderRadius: BorderRadius.circular(12),
                            ),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  // selectedIndex = 1;
                                });
                              },
                              icon: const Icon(
                                Icons.settings,
                                size: 40,
                                // color: selectedIndex == 1 ? Colors.white : Colors.grey, // Highlight selected icon
                              ),
                            ),
                          )
                        : IconButton(
                            onPressed: () {
                              setState(() {
                                selectedIndex = 2;
                              });
                            },
                            icon: const Icon(
                              Icons.videocam,
                              size: 40,
                              // color: selectedIndex == 2 ? Colors.white : Colors.grey, // Highlight selected icon
                            ),
                          ),
                  ],
                ),
              ),
            ),
          ],
        ));
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
