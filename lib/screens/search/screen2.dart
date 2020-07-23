import 'package:flutter/material.dart';
import 'package:project_selling_per/screens/home/screen1.dart';
import 'package:project_selling_per/widget/appBar.dart';

class Screen2 extends StatelessWidget {
  Screen2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        hintText: "Every products that you want...",
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Container(
            constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.95),
            child: Column(
              children: <Widget>[
                Container(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.whatshot, color: Colors.red),
                      Text('Hot Product', style: TextStyle(fontSize: 14.0))
                    ],
                  ),
                )),
                Container(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Container(
                                constraints: BoxConstraints(
                                    maxWidth:
                                        MediaQuery.of(context).size.width *
                                            0.3),
                                child: FlatButton(
                                  onPressed: () => print('pressed'),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      'Dog food',
                                    ),
                                  ),
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Container(
                                constraints: BoxConstraints(
                                    maxWidth:
                                        MediaQuery.of(context).size.width *
                                            0.3),
                                child: FlatButton(
                                  onPressed: () => print('pressed'),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      'Cat food',
                                    ),
                                  ),
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Container(
                                constraints: BoxConstraints(
                                    maxWidth:
                                        MediaQuery.of(context).size.width *
                                            0.3),
                                child: FlatButton(
                                  onPressed: () => print('pressed'),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      'Cat food ',
                                    ),
                                  ),
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Center(
                              child: Container(
                            constraints: BoxConstraints(
                                maxWidth:
                                    MediaQuery.of(context).size.width * 0.4),
                            child: FlatButton(
                              onPressed: () => print('pressed'),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  'Clothes for pet',
                                ),
                              ),
                              color: Colors.grey,
                            ),
                          )),
                          Center(
                              child: Container(
                            constraints: BoxConstraints(
                                maxWidth:
                                    MediaQuery.of(context).size.width * 0.4),
                            child: FlatButton(
                              onPressed: () => print('pressed'),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  'Pet toys',
                                ),
                              ),
                              color: Colors.grey,
                            ),
                          )),
                          Center(
                              child: Container(
                            constraints: BoxConstraints(
                                maxWidth:
                                    MediaQuery.of(context).size.width * 0.4),
                            child: FlatButton(
                              onPressed: () => print('pressed'),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  'Pet toys',
                                ),
                              ),
                              color: Colors.grey,
                            ),
                          )),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Search History"),
                          Container(
                            child: FlatButton(
                              onPressed: () {},
                              child: Text(
                                "Delete",
                                style: TextStyle(
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline),
                              ),
                            ),
                          )
                        ],
                      ),
                      Divider(color: Colors.grey)
                    ],
                  ),
                ),
                Container(
                    child: Column(
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Mèo Anh lông ngắn",
                              style: TextStyle(fontSize: 14.0)),
                          Icon(
                            Icons.fitness_center,
                            size: 14.0,
                          )
                        ],
                      ),
                    ),
                    FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => Screen1(item: 'xxx')));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Chó corgi", style: TextStyle(fontSize: 14.0)),
                            Icon(Icons.fitness_center, size: 14.0)
                          ],
                        )),
                  ],
                )),
              ],
            )),
      ),
    );
  }
}
