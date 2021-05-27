import 'package:QuichWashFL/myOrder/main.dart';
import 'package:flutter/material.dart';

class FeatureList extends StatelessWidget {
  FeatureList({Key key, this.data_feature, this.index}) : super(key: key);

  var data_feature;
  int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15,
      margin: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 30,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.5),
      ),
      child: Container(
        height: 100,
        width: 100,
        child: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => OrderPage()));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    margin: EdgeInsets.only(
                      left: 23,
                      top: 10,
                      bottom: 10,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(40),
                        ),
                        border:
                            Border.all(color: Colors.blueGrey[200], width: 1)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 36,
                      top: 25,
                    ),
                    child: Image.asset(
                      '' + data_feature[index]['image'],
                      height: 32.5,
                    ),
                  ),
                ],
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Order No: ' + data_feature[index]['name'],
                      style: TextStyle(
                          color: Colors.blueGrey[800],
                          fontSize: 14.8,
                          fontFamily: 'josefinSans'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '' + data_feature[index]['label'],
                      style: TextStyle(
                          color: Colors.blueGrey[300],
                          fontSize: 14.8,
                          fontFamily: 'josefinSans'),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '\$' + data_feature[index]['price'],
                      style: TextStyle(
                          color: Colors.blueGrey[800],
                          fontSize: 18,
                          fontFamily: 'josefinSans'),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      '' + data_feature[index]['time'],
                      style: TextStyle(
                          color: Colors.blueGrey[300],
                          fontSize: 13,
                          fontFamily: 'josefinSans'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
