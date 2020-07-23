import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Badge(
      animationType: BadgeAnimationType.scale,
      shape: BadgeShape.square,
      borderRadius: 8.0,
      badgeColor: Colors.red,
      badgeContent: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Text(
          '40%',
          style: TextStyle(color: Colors.white, fontSize: 9.0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Image.asset(
                'lib/assets/images/assest1.jpg',
                // height: 100,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text('1.200.000 đ',
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    ));
  }
}
