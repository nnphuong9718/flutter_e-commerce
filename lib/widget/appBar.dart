import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  String hintText;

  AppBarWidget({Key key, this.hintText}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue,
      title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              flex: 7,
              child: RaisedButton(
                color: Colors.white,
                onPressed: () {},
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Icon(Icons.search),
                    ),
                    Text(hintText)
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Icon(Icons.shopping_cart),
                ))
          ]),
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);
}
