import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class OfferList extends StatelessWidget {
  OfferList({Key key, this.data_offer, this.index}) : super(key: key);
  var data_offer;
  int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Material(
        elevation: 20,
        child: Container(
          width: MediaQuery.of(context).size.width / 1,
          height: MediaQuery.of(context).size.height / 4.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 30, right: 20),
                child: Text(
                  '' + data_offer[index]['name'],
                  style: TextStyle(
                      color: Colors.blueGrey[800],
                      fontSize: 14.8,
                      fontFamily: 'josefinSans'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  '' + data_offer[index]['label'],
                  style: TextStyle(
                      color: Colors.blueGrey[300],
                      fontSize: 13,
                      fontFamily: 'josefinSans'),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: InkWell(
                      onTap: () {},
                      child: Stack(
                        children: [
                          DottedBorder(
                            radius: Radius.circular(4),
                            borderType: BorderType.RRect,
                            dashPattern: [2, 4],
                            strokeWidth: 1,
                            child: Container(
                              height: 38,
                              width: 95,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 16, left: 15, right: 10),
                            child: Text(
                              '' + data_offer[index]['freeBtn'],
                              style: TextStyle(
                                  color: Colors.cyan[400],
                                  fontSize: 12,
                                  fontFamily: 'josefinSans',
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.white,
                    onTap: () {},
                    child: Text(
                      'Tap to copy',
                      style: TextStyle(
                          //fontWeight: FontWeight.w500,
                          color: Colors.blueGrey[100],
                          fontSize: 13,
                          fontFamily: 'josefinSans'),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
