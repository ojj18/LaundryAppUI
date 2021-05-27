import 'package:flutter/material.dart';

class TimeTab extends StatefulWidget {
  @override
  _TimeTabState createState() => _TimeTabState();
}

class _TimeTabState extends State<TimeTab> {
  var selectedCard = 'WEIGHT';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: DefaultTabController(
          length: 1,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildInfoCard("9:00 am - 12:00\npm"),
                    _buildInfoCard("10:00 am - 11:00\npm"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildInfoCard("5:00 pm - 12:00\nam"),
                    _buildInfoCard("12:00 am - 7:00\npm"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildInfoCard("3:00 pm - 8:00\nam"),
                    _buildInfoCard("6:00 am - 10:00\npm"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildInfoCard("4:00 pm - 6:00\nam"),
                    _buildInfoCard("12:00 am - 10:00\npm"),
                  ],
                ),
              ),
            ],
          )),
    );
  }

  Widget _buildInfoCard(
    String cardTitle,
  ) {
    return Container(
      decoration: BoxDecoration(
          color: cardTitle == selectedCard ? Colors.cyan : Colors.white,
          border: Border.all(
            color: cardTitle == selectedCard
                ? Colors.transparent
                : Colors.grey.withOpacity(0.3),
            width: 0.75,
          ),
          borderRadius: BorderRadius.circular(10)),
      child: FlatButton(
        onPressed: () {
          selectCard(cardTitle);
        },
        child: Text(
          cardTitle,
          style: TextStyle(
            fontFamily: 'josefinSans',
            fontSize: 15,
            color:
                cardTitle == selectedCard ? Colors.white : Colors.blueGrey[700],
          ),
        ),
      ),
    );
  }

  selectCard(cardTitle) {
    setState(() {
      selectedCard = cardTitle;
    });
  }
}
