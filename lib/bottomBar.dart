import 'package:flutter/material.dart';
import 'package:project_selling_per/screens/home/screen1.dart';

//class BottomBar extends StatefulWidget {
//  const BottomBar({Key key}) : super(key: key);
//
//  @override
//  _BottomBarState createState() => _BottomBarState();
//}
//
//class _BottomBarState extends State<BottomBar> {
//  int currentIndex = 0;
//  @override
//  Widget build(BuildContext context) {
//    print('abcxyz');
//    return BottomNavigationBar(
//        currentIndex: currentIndex,
//        onTap: (int index) {
//          print(index);
//          setState(() {
//            currentIndex = index;
//          });
//          if (index == 1) {
//            Navigator.push(
//                context, MaterialPageRoute(builder: (_) => Screen1(item: '1')));
//          }
//        },
//        items: [
//          BottomNavigationBarItem(
//              title: Text("Screen 1"), icon: Icon(Icons.add_to_home_screen)),
//          BottomNavigationBarItem(
//              title: Text("Screen 2"), icon: Icon(Icons.add_circle_outline))
//        ]);
//  }
//}

class BottomBar extends StatefulWidget {
  const BottomBar({Key key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  TabController controller = TabController(length: 2, vsync: null);
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    print('abcxyz');
    return Material(
      child: TabBar(controller: controller, tabs: <Tab>[
        Tab(
          icon: Icon(Icons.arrow_drop_down),
        ),
        Tab(
          icon: Icon(Icons.access_time),
        )
      ]),
    );
  }
}
