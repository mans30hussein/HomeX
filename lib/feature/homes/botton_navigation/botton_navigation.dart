

import 'package:flutter/material.dart';

class BottonNavigation extends StatelessWidget {
   BottonNavigation({super.key});
 
  @override
  Widget build(BuildContext context) {
    List<Widget> list = [
           CustomIconBotton(
           icon: const Icon(Icons.settings,  size: 30,color: Color(0xff614DDD),),
           onpressed: () {
             Navigator.push(context, MaterialPageRoute(builder: (context) => Screen1()));
           }),
           CustomIconBotton(
           icon: const Icon(Icons.settings,  size: 30,color: Color(0xff614DDD),),
           onpressed: () {
             Navigator.push(context, MaterialPageRoute(builder: (context) => Screen2()));
           }),
           CustomIconBotton(
           icon: const Icon(Icons.settings,  size: 30,color: Color(0xff614DDD),),
           onpressed: () {
             Navigator.push(context, MaterialPageRoute(builder: (context) => Screen3()));
           }),
  
  ];
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          Center(
            child: CustomContainer(list: list)
          ),
        ]),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
   CustomContainer({
    super.key,
    required this.list,
  });

  final List<Widget> list;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
     
      itemCount: 1,
      itemBuilder: (context, index) =>Container(
          height: 65,
          width: 270,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: const Color(0xff614DDD).withOpacity(0.5),
          ),
          child: Row(
            children: list,
          )
          ),
    );
  }
}


class CustomIconBotton extends StatelessWidget {
  CustomIconBotton({
    super.key,
    required this.icon,
    required this.onpressed,
  });
  Widget icon;
  Function() onpressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onpressed,
       icon: icon ,);
  }
}
class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Screen 1'),
      ),
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