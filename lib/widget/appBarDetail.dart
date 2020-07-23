import 'package:flutter/material.dart';

class AppBarDetail extends StatelessWidget implements PreferredSizeWidget {
  const AppBarDetail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AppBar(
        backgroundColor: Colors.blue[400],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Row(
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 0,
                    child: FlatButton(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        onPressed: () {},
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                        )),
                  ),
                  ButtonTheme(
                      minWidth: 0,
                      child: FlatButton(
                          onPressed: () {
                            Navigator.popUntil(context,
                                (Route<dynamic> route) => route.isFirst);
                          },
                          child: Icon(
                            Icons.home,
                            color: Colors.white,
                          ))),
                  ButtonTheme(
                    minWidth: 0,
                    child: FlatButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
            ),
            Icon(Icons.more_horiz)
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);
}
