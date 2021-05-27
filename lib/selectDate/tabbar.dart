import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Tabbar2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorWeight: 3.0,
      unselectedLabelColor: Colors.blueGrey[300],
      labelColor: Colors.cyan[300],
      isScrollable: true,
      indicatorColor: Colors.cyan[400],
      indicatorSize: TabBarIndicatorSize.label,
      labelPadding: EdgeInsets.only(
        bottom: 15,
      ),
      tabs: [
        Tab(
          child: Container(
            height: 160,
            width: 160,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  MaterialCommunityIcons.truck_check,
                  size: 37,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Pick up',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'josefinSans',
                      color: Colors.blueGrey[700]),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Tab(
            child: Container(
              height: 160,
              width: 160,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    MaterialCommunityIcons.truck_delivery,
                    size: 37,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Delivery',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'josefinSans',
                        color: Colors.blueGrey[800]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
