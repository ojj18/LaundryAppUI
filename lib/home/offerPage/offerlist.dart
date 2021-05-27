import 'package:QuichWashFL/offer/main.dart';
import 'package:flutter/material.dart';

class OfferList extends StatelessWidget {
  OfferList({Key key, this.data_Offer, this.index}) : super(key: key);
  var data_Offer;
  int index;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 55,
                left: 20,
                right: 25,
              ),
              child: Column(
                children: [
                  Text(
                    '' + data_Offer[index]["name"],
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: 'josefinSans'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 48),
              child: FlatButton(
                onPressed: () {
                  Navigator.pop(context, false);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OfferPage()));
                },
                child: Row(
                  children: [
                    Text(
                      'View all offers',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Icon(
                        Icons.arrow_forward,
                        size: 30,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: Image.asset(
            '' + data_Offer[index]["image"],
            height: 300,
            width: 150,
          ),
        )
      ],
    );
  }
}
