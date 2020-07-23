import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListProductWidget extends StatelessWidget {
  ListProductWidget({Key key, this.listData}) : super(key: key);

  List listData;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: listData,
      ),
    );
  }
}
