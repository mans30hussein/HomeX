// import 'package:flutter/material.dart';

// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int _currentIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return bottomNavigation();
//   }

//   Scaffold bottomNavigation() {
//     return  bottomNavigationBar: bottonNavigation();
  
//   }

//   CurvedNavigationBar bottonNavigation() {
//     return CurvedNavigationBar(
//     index: 0,
//     height: 50.0,
//     // 
//     backgroundColor: Colors.transparent,
//     items: const <Widget>[
//       Icon(Icons.home, size: 30 , ),
//       Icon(Icons.search, size: 30),
//       Icon(Icons.add, size: 30),
//       Icon(Icons.favorite, size: 30),
//       Icon(Icons.person, size: 30),
//     ],
//     onTap: (index) {
//       setState(() {
//         _currentIndex = index;
//       });
//     },
//   );
//   }
// }

