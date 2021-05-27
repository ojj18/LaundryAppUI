import 'dart:convert';

//import 'package:QuichWashFL/Home/offerPage/offerlist.dart';
import 'package:QuichWashFL/Notification/NotificationList.dart';
import 'package:QuichWashFL/home/homePage.dart';
import 'package:QuichWashFL/offer/OfferList.dart';
import 'package:QuichWashFL/publicMain/main.dart';
import 'package:flutter/material.dart';

class OfferPage extends StatefulWidget {
  OfferPage({
    Key key,
  }) : super(key: key);
  @override
  _OfferPageState createState() => _OfferPageState();
}

class _OfferPageState extends State<OfferPage> {
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Publicmain()));
            }),
        title: Text(
          'Offers',
          style: TextStyle(
              fontFamily: 'josefinSans',
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height / 1,
          child: FutureBuilder(
              future: DefaultAssetBundle.of(context)
                  .loadString('assets/Json/Discount.json'),
              builder: (context, snapshot) {
                var data_offer = json.decode(snapshot.data.toString());
                return Scrollbar(
                  child: ListView.builder(
                    padding: EdgeInsets.only(bottom: 150),
                    itemBuilder: (BuildContext context, int index) {
                      return OfferList(
                        data_offer: data_offer,
                        index: index,
                      );
                    },
                    itemCount: data_offer == null ? 0 : data_offer.length,
                  ),
                );
              }),
        ),
      ),
    );
  }
}
