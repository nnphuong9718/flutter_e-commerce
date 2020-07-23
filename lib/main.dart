import 'package:flutter/material.dart';
import 'package:project_selling_per/bottomBar.dart';
import 'package:project_selling_per/screens/category/category.dart';
import 'package:project_selling_per/screens/home/screen1.dart';
import 'package:project_selling_per/screens/search/screen2.dart';
import 'package:project_selling_per/screens/user/user.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  static final _myTabbedPageKey = new GlobalKey<_MyAppState>();
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Selling Pet',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
              bodyText2: TextStyle(fontSize: 16, color: Colors.black)),
          buttonTheme: ButtonThemeData(
            padding: EdgeInsets.all(8.0),
          )),
      home: Scaffold(
        body: TabBarView(controller: _controller, children: <Widget>[
          Screen1(item: (_controller.index).toString()),
          Screen2(),
          CategoryScreen(),
          User()
        ]),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: TabBar(
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
            controller: _controller,
            tabs: <Widget>[
              Tab(
                child: Column(
                  children: <Widget>[
                    Icon(Icons.home),
                    Text(
                      "Trang chủ",
                      style: TextStyle(fontSize: 12.0),
                    )
                  ],
                ),
              ),
              Tab(
                child: Column(
                  children: <Widget>[
                    Icon(Icons.search),
                    Text(
                      "Tìm kiếm",
                      style: TextStyle(fontSize: 12.0),
                    )
                  ],
                ),
              ),
              Tab(
                child: Column(
                  children: <Widget>[
                    Icon(Icons.view_list),
                    Text(
                      "Danh mục",
                      style: TextStyle(fontSize: 12.0),
                    )
                  ],
                ),
              ),
              Tab(
                child: Column(
                  children: <Widget>[
                    Icon(Icons.person_outline),
                    Text(
                      "Cá nhân",
                      style: TextStyle(fontSize: 12.0),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
