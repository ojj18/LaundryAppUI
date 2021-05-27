import 'dart:convert';

import 'package:QuichWashFL/Home/offerPage/offerlist.dart';
import 'package:flutter/material.dart';

class Offer extends StatelessWidget {
  Offer({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3.5,
      child: FutureBuilder(
        future:
            DefaultAssetBundle.of(context).loadString('assets/Json/Offer.json'),
        builder: (context, snapshot) {
          var data_Offer = json.decode(snapshot.data.toString());
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return OfferList(
                data_Offer: data_Offer,
                index: index,
              );
            },
            itemCount: data_Offer == null ? 0 : data_Offer.length,
          );
        },
      ),
    );
  }
}
