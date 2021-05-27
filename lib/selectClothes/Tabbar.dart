import 'package:flutter/material.dart';

class Tabbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorWeight: 3.0,
      unselectedLabelColor: Colors.blueGrey[700],
      labelColor: Colors.cyan[300],
      isScrollable: true,
      indicatorColor: Colors.cyan[400],
      indicatorSize: TabBarIndicatorSize.label,
      tabs: [
        Tab(
            child: Container(
          height: 90,
          width: 90,
          alignment: Alignment.center,
          child: Text(
            'Man',
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'josefinSans',
            ),
          ),
        )),
        Tab(
          child: Container(
            height: 90,
            width: 90,
            alignment: Alignment.center,
            child: Text(
              'Woman',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'josefinSans',
              ),
            ),
          ),
        ),
        Tab(
          child: Container(
            height: 90,
            width: 90,
            alignment: Alignment.center,
            child: Text(
              'Kids',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'josefinSans',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
