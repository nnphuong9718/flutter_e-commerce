import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class User extends StatelessWidget {
  const User({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('Cá nhân'),
            Icon(
              Icons.shopping_cart,
              color: Colors.white,
            )
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(color: Colors.grey[300]),
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: Colors.blue[300],
                                        borderRadius:
                                            BorderRadius.circular(25.0)),
                                    child: Icon(
                                      Icons.person,
                                      size: 35,
                                      color: Colors.white,
                                    )),
                              ),
                            ),
                            Expanded(
                              flex: 8,
                              child: Container(
                                  // decoration: BoxDecoration(color: Colors.red),
                                  child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 6.0),
                                      child: Text('User test'),
                                    ),
                                    Text(
                                      '16520970@gm.uit.edu.vn',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12.0),
                                    ),
                                    Text(
                                      'Thành viên từ 11/5/2020',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12.0),
                                    )
                                  ],
                                ),
                              )),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: FlatButton(
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.navigate_next,
                                    color: Colors.blue[300],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Container(
                        decoration: BoxDecoration(color: Colors.white),
                        child: FlatButton(
                          onPressed: () {},
                          child: Row(
                            children: <Widget>[
                              FaIcon(FontAwesomeIcons.share,
                                  color: Colors.blue[300], size: 22.0),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  'Kết nối mạng xã hội',
                                  style: TextStyle(fontSize: 14.0),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      decoration: BoxDecoration(color: Colors.white),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FlatButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                FaIcon(
                                  FontAwesomeIcons.fileAlt,
                                  size: 22.0,
                                  color: Colors.blue[300],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12.0),
                                  child: Text(
                                    'Quản lý đơn hàng',
                                    style: TextStyle(fontSize: 14.0),
                                  ),
                                )
                              ],
                            ),
                          ),
                          FlatButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                FaIcon(FontAwesomeIcons.cat,
                                    color: Colors.blue[300], size: 22.0),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Text(
                                    'Thú cưng đã mua',
                                    style: TextStyle(fontSize: 14.0),
                                  ),
                                )
                              ],
                            ),
                          ),
                          FlatButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                FaIcon(FontAwesomeIcons.heart,
                                    color: Colors.blue[300], size: 22.0),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Text(
                                    'Thú cưng yêu thích',
                                    style: TextStyle(fontSize: 14.0),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Container(
                        decoration: BoxDecoration(color: Colors.white),
                        child: Column(
                          children: <Widget>[
                            FlatButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Icon(Icons.location_on,
                                      color: Colors.blue[300]),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Text(
                                      'Sổ địa chỉ',
                                      style: TextStyle(fontSize: 14.0),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            FlatButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Icon(Icons.account_balance_wallet,
                                      color: Colors.blue[300]),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Text(
                                      'Thông tin thanh toán',
                                      style: TextStyle(fontSize: 14.0),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(color: Colors.white),
                      child: FlatButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Icon(Icons.exit_to_app, color: Colors.blue[300]),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                'Đăng xuất',
                                style: TextStyle(fontSize: 14.0),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text('Version 0.0.1',
                          style: TextStyle(fontSize: 12.0, color: Colors.grey)),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
