import 'package:QuichWashFL/Home/dashBoard/LIst.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

class Services extends StatelessWidget {
  Services({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      child: FutureBuilder(
          future: DefaultAssetBundle.of(context)
              .loadString('assets/Json/Services.json'),
          builder: (context, snapshot) {
            var feature_data = json.decode(snapshot.data.toString());
            return GlowingOverscrollIndicator(
              color: Colors.white,
              axisDirection: AxisDirection.right,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return List(feature_data: feature_data, index: index);
                },
                itemCount: feature_data == null ? 0 : feature_data.length,
              ),
            );
          }),
    );
  }
}
