import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  List text = ['LANDSCAPE', 'RUSSIA', 'AMERICA', 'INDIA'];
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            '',
            style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'NORTH LAT24',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.normal),
                ),
                Image.network(
                  'https://www.freeiconspng.com/thumbs/location-icon-png/location-icon-map-png--1.png',
                  scale: 12,
                  color: Colors.white,
                ),
                Text(
                  'NORTH',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.normal),
                ),
              ]),
        ],
      ),
    );
  }
}
