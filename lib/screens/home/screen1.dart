import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project_selling_per/screens/detailPet/detail.dart';
import 'package:project_selling_per/widget/widgets.dart' show AppBarWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:project_selling_per/widget/product.dart';

// ignore: must_be_immutable
class Screen1 extends StatelessWidget {
  Screen1({Key key, this.item}) : super(key: key);
  String item;

  @override
  Widget build(BuildContext context) {
//     return StreamBuilder<QuerySnapshot>(
//         stream: Firestore.instance.collection('pet').snapshots(),
//         builder: (context, snapshot) {
// //         print(snapshot.toString());
//           if (snapshot.connectionState == ConnectionState.active) {
//             snapshot.data.documents
//                 .map((document) => Text(document.data["name"]))
//                 .toList();
//           }

    return Scaffold(
        appBar: AppBarWidget(hintText: 'What do you want?'),
        body: ListView(
          // mainAxisSize: MainAxisSize.min,
          scrollDirection: Axis.vertical,
          // mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            // Expanded(
            //   child: ListView(
            //       children: snapshot.data.documents
            //           .map((document) => Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceAround,
            //                 children: <Widget>[
            //                   Text(document.data["name"]),
            //                   Text(document.data["age"].toString())
            //                 ],
            //               ))
            //           .toList()),
            // )
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: CarouselSlider(
                options: CarouselOptions(
                    autoPlay: true,
                    // scrollDirection: Axis.horizontal,
                    height: MediaQuery.of(context).size.height / 6),
                items: [
                  'lib/assets/images/slide-1.jpg',
                  'lib/assets/images/assest1.jpg',
                  'lib/assets/images/slide-1.jpg',
                ].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          // height: 120,
                          // decoration: BoxDecoration(color: Colors.blue),
                          child: Image.asset(i, fit: BoxFit.cover));
                    },
                  );
                }).toList(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'Flash sale',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  padding: EdgeInsets.zero,
                  child: Text(
                    'Xem thêm',
                    style: TextStyle(color: Colors.blueAccent, fontSize: 15.0),
                  ),
                )
              ],
            ),
            Column(children: <Widget>[
              Container(
                height: 35,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: ['Tất cả', 'Chó', 'Mèo', 'Chim', 'Chuột Hamster']
                      .map((title) => Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: RaisedButton(
                              color: Colors.grey[300],
                              padding: EdgeInsets.all(8),
                              // color: Colors.black,
                              onPressed: () {
                                print(title);
                              },
                              child: Text(
                                title,
                                // style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ))
                      .toList(),
                ),
              ),
              Container(
                  height: 150,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        '1',
                        '2',
                        '3',
                        '4',
                        '5',
                      ]
                          .map((text) => FlatButton(
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => DetailPet(
                                                itemId: text,
                                              )));
                                },
                                child: ProductWidget(),
                              ))
                          .toList()))
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'Chó',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Xem thêm',
                    style: TextStyle(color: Colors.blueAccent, fontSize: 15.0),
                  ),
                )
              ],
            ),
            Container(
                height: 150,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      '1',
                      '2',
                      '3',
                      '4',
                      '5',
                    ]
                        .map((text) => FlatButton(
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              onPressed: () {},
                              child: ProductWidget(),
                            ))
                        .toList())),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'Chó',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Xem thêm',
                    style: TextStyle(color: Colors.blueAccent, fontSize: 15.0),
                  ),
                )
              ],
            ),
            Container(
                height: 150,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      '1',
                      '2',
                      '3',
                      '4',
                      '5',
                    ]
                        .map((text) => FlatButton(
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              onPressed: () {},
                              child: ProductWidget(),
                            ))
                        .toList()))
          ],
        ));
  }
}
