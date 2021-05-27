import 'package:QuichWashFL/account/Main.dart';
import 'package:flutter/material.dart';

class TermsPage extends StatelessWidget {
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
                  context, MaterialPageRoute(builder: (context) => Account()));
            }),
        title: Text(
          'Terms & Conditions',
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 10,
                    top: 20,
                  ),
                  child: Image.network(
                    'https://cdn.pixabay.com/photo/2016/12/07/09/46/washing-machine-1889087_960_720.jpg',
                    height: 100,
                    width: 100,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Text(
                    'Quick Wash',
                    style: TextStyle(
                      fontFamily: 'josefinSans',
                      color: Colors.blueGrey[700],
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                'Terms of Use',
                style: TextStyle(
                    color: Colors.blueGrey[300],
                    fontSize: 14,
                    fontFamily: 'josefinSans'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                'It is a long established fact that a reader will be distracted by the readable content of a page\nwhen looking at its layout. Lorem ipsum dolor sit\namet, consectetur adipiscing elit, sed do eiusmod\ntemporfacilisis gravida neque. Turpis egestas\ninteger eget aliquet nibh praesent.',
                style: TextStyle(
                    color: Colors.blueGrey[500],
                    fontSize: 14,
                    fontFamily: 'josefinSans',
                    height: 1.5),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                'Privacy policy',
                style: TextStyle(
                    color: Colors.blueGrey[300],
                    fontSize: 14,
                    fontFamily: 'josefinSans'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                'It is a long established fact that a reader will be distracted by the readable content of a page\nwhen looking at its layout. Lorem ipsum dolor sit\namet, consectetur adipiscing elit, sed do eiusmod\ntemporfacilisis gravida neque. Turpis egestas\ninteger eget aliquet nibh praesent.',
                style: TextStyle(
                    color: Colors.blueGrey[500],
                    fontSize: 14,
                    fontFamily: 'josefinSans',
                    height: 1.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
