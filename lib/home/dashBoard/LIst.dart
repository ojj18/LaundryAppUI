import 'package:QuichWashFL/selectClothes/Clothes.dart';
import 'package:flutter/material.dart';

class List extends StatelessWidget {
  List({Key key, this.feature_data, this.index}) : super(key: key);
  var feature_data;
  int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Card(
        elevation: 10,
        margin: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          height: 100,
          width: 130,
          child: InkWell(
            onTap: () {
              Navigator.pop(context, false);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Clothes()));
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  '' + feature_data[index]['image'],
                  height: 60,
                  width: 60,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '' + feature_data[index]['name'],
                  style: TextStyle(
                      fontFamily: 'josefinSans',
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.blueGrey[800]),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '' + feature_data[index]['time'],
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'josefinSans',
                      fontWeight: FontWeight.w200,
                      color: Colors.blueGrey[300]),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
