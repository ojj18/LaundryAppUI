import 'package:QuichWashFL/Home/featurePage/featurelist.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

class Feature extends StatelessWidget {
  Feature({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: FutureBuilder(
        future: DefaultAssetBundle.of(context)
            .loadString('assets/Json/Features.json'),
        builder: (context, snapshot) {
          var data_feature = json.decode(snapshot.data.toString());
          return ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              return FeatureList(
                data_feature: data_feature,
                index: index,
              );
            },
            itemCount: data_feature == null ? 0 : data_feature.length,
          );
        },
      ),
    );
  }
}
