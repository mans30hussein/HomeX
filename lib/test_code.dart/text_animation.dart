import 'package:flutter/material.dart';
import 'package:home_x/features/home/kitchen.dart';
import 'package:home_x/features/home/office.dart';
import 'package:home_x/features/home/room.dart';
import 'package:home_x/features/home/widgets/build_text_list_view.dart';
import 'package:home_x/features/home/widgets/custom_icon.dart';
import 'package:home_x/features/home/widgets/custom_user_info.dart';





class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  List<Widget> Screens = [
    Room(),
    Office(),
    Kitchen(),
  ];
    List<String> list = [
    "reseptions",
    "Office",    "room",
    "Kitchen",
    "bathroom",
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: ListView(
        children: [
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomIcons(),
            CustomUserInfo(),
            SizedBox(
              height: 25,
            ),
                ],
              ),
            ),
          //  BuildTextListView(),
            Container(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        //_selectedIndex = index;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color:
                            _selectedIndex == index ? Colors.blue : Colors.grey,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        list[index],
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: PageView.builder(
                itemCount: 5,
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
            ),
            Container(
              height: 100,
              color: Colors.grey[200],
            ),
          ],
        ),
        ],
        
      ),
    );
  }
}
