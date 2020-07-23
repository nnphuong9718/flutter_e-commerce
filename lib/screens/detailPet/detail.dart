import 'package:flutter/material.dart';
import 'package:project_selling_per/screens/detailPet/detailPet_bloc.dart';
import 'package:project_selling_per/widget/appBarDetail.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailPet extends StatefulWidget {
  DetailPet({Key key, this.itemId}) : super(key: key);
  String itemId;

  @override
  _DetailPetState createState() => _DetailPetState();
}

class _DetailPetState extends State<DetailPet> {
  @override
  Widget build(BuildContext context) {
    final DetailBloc detailBloc = context.bloc<DetailBloc>();
    print(widget.itemId);
    return Scaffold(
      appBar: AppBarDetail(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Image.asset(
              'lib/assets/images/assest1.jpg',
              // height: 100,
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height * 0.5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'Item ID:' + widget.itemId,
              ),
            ),
            RatingBarIndicator(
              rating: 4.2,
              itemBuilder: (context, builder) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              itemCount: 5,
              itemSize: 20.0,
              direction: Axis.horizontal,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '1.200.000 đ',
                    style: TextStyle(fontSize: 25.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Text(
                      '1.800.000 đ',
                      style: TextStyle(
                          fontSize: 17.0,
                          decoration: TextDecoration.lineThrough),
                    ),
                  ),
                  Text(
                    '-27%',
                    style: TextStyle(fontSize: 17.0),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: RaisedButton(
                onPressed: () {
                  detailBloc.add(BuyEvent.clicked);
                },
                color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Chọn Mua',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            Text(
                'Test text dai Test text dai Test text dai Test text dai Test text dai'),
            Text(
                'Test text dai Test text dai Test text dai Test text dai Test text dai'),
            Text(
                'Test text dai Test text dai Test text dai Test text dai Test text dai'),
            Text(
                'Test text dai Test text dai Test text dai Test text dai Test text dai')
          ],
        ),
      ),
    );
  }
}
