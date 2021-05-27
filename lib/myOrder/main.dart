import 'dart:convert';

import 'package:QuichWashFL/Home/homePage.dart';

import 'package:QuichWashFL/myOrder/orderlist.dart';
import 'package:QuichWashFL/publicMain/main.dart';

import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  OrderPage({Key key}) : super(key: key);
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.cyan[300],
          ),
          onPressed: () {
            Navigator.pop(context, false);
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Publicmain()));
          },
        ),
        title: Text(
          'My Orders',
          style: TextStyle(
              fontFamily: 'josefinSans',
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height / 1.1,
        child: FutureBuilder(
            future: DefaultAssetBundle.of(context)
                .loadString('assets/Json/Notification.json'),
            builder: (context, snapshot) {
              var data_nav = json.decode(snapshot.data.toString());
              return ListView.builder(
                physics: ClampingScrollPhysics(),
                padding: EdgeInsets.only(bottom: 30),
                itemBuilder: (BuildContext context, int index) {
                  return OrderList(
                    data_nav: data_nav,
                    index: index,
                  );
                },
                itemCount: data_nav == null ? 0 : data_nav.length,
              );
            }),
      ),

      // bottomNavigationBar: BottomNav(),
    );
  }
}
