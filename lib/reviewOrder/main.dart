import 'package:QuichWashFL/payment/main.dart';
import 'package:QuichWashFL/selectClothes/Clothes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class ReviewOrder extends StatefulWidget {
  @override
  _ReviewOrderState createState() => _ReviewOrderState();
}

class _ReviewOrderState extends State<ReviewOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.cyan[400],
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(
                context,
              );
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Clothes()));
            }),
        title: Text(
          'Review Order',
          style: TextStyle(
              fontFamily: 'josefinSans',
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height / 1,
        padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Your Clothes',
                  style: TextStyle(
                    fontFamily: 'josefinSans',
                    color: Colors.blueGrey[300],
                    fontSize: 15,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Edit',
                    style: TextStyle(
                      fontFamily: 'josefinSans',
                      color: Colors.cyan[400],
                      fontSize: 17,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '3 x Jeans ( Man )',
                  style: TextStyle(
                      fontFamily: 'josefinSans',
                      color: Colors.blueGrey[800],
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  'Wash & Iron',
                  style: TextStyle(
                      fontFamily: 'josefinSans',
                      color: Colors.blueGrey[300],
                      fontSize: 13,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  '\$ 20',
                  style: TextStyle(
                      fontFamily: 'josefinSans',
                      color: Colors.blueGrey[800],
                      fontSize: 13,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '2 x Jeans ( Man )',
                  style: TextStyle(
                      fontFamily: 'josefinSans',
                      color: Colors.blueGrey[800],
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  'Wash & Iron',
                  style: TextStyle(
                      fontFamily: 'josefinSans',
                      color: Colors.blueGrey[300],
                      fontSize: 13,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  '\$ 34',
                  style: TextStyle(
                      fontFamily: 'josefinSans',
                      color: Colors.blueGrey[800],
                      fontSize: 13,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '1 x Jeans ( Man )',
                  style: TextStyle(
                      fontFamily: 'josefinSans',
                      color: Colors.blueGrey[800],
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  'Wash & Iron',
                  style: TextStyle(
                      fontFamily: 'josefinSans',
                      color: Colors.blueGrey[300],
                      fontSize: 13,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  '\$ 34',
                  style: TextStyle(
                      fontFamily: 'josefinSans',
                      color: Colors.blueGrey[800],
                      fontSize: 13,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '2 x Jeans ( Man )',
                  style: TextStyle(
                      fontFamily: 'josefinSans',
                      color: Colors.blueGrey[800],
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  'Wash & Iron',
                  style: TextStyle(
                      fontFamily: 'josefinSans',
                      color: Colors.blueGrey[300],
                      fontSize: 13,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  '\$ 34',
                  style: TextStyle(
                      fontFamily: 'josefinSans',
                      color: Colors.blueGrey[800],
                      fontSize: 13,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {},
              child: Text(
                'Add more',
                style: TextStyle(
                  fontFamily: 'josefinSans',
                  color: Colors.cyan[400],
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Icon(
                          FontAwesome.tag,
                          color: Colors.cyan[400],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 10),
                          child: Text(
                            'Have Promo code ?',
                            style: TextStyle(
                                fontFamily: 'josefinSans',
                                color: Colors.cyan[400],
                                fontSize: 17,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sub Total',
                  style: TextStyle(
                      fontFamily: 'josefinSans',
                      color: Colors.blueGrey[300],
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  '\$ 73',
                  style: TextStyle(
                      fontFamily: 'josefinSans',
                      color: Colors.blueGrey[800],
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Tax',
                  style: TextStyle(
                      fontFamily: 'josefinSans',
                      color: Colors.blueGrey[300],
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  '\$  5',
                  style: TextStyle(
                      fontFamily: 'josefinSans',
                      color: Colors.blueGrey[800],
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Payable Amount',
                  style: TextStyle(
                      fontFamily: 'josefinSans',
                      color: Colors.cyan[400],
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  '\$  78',
                  style: TextStyle(
                      fontFamily: 'josefinSans',
                      color: Colors.cyan[400],
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
              height: 50,
              width: MediaQuery.of(context).size.width / 1.1,
              child: InkWell(
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  color: Colors.cyan[400],
                  onPressed: () {
                    Navigator.pop(context, false);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Payment()));
                  },
                  child: Text(
                    'Confirm Order',
                    style: TextStyle(
                        fontFamily: "josefinSans",
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
