import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:location_pageview_app/widgets/image_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int select = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF688598),
      appBar: AppBar(
        title: Text(
          'INTERESTS',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.search,
          color: Colors.white,
          size: 30,
        ),
        actions: [
          Icon(
            Icons.location_on,
            color: Colors.white,
            size: 30,
          )
        ],
      ),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(bottom: 50),
          child: Column(
            children: [
              Spacer(),
              SizedBox(height: 500, child: ImagePage()),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildmenu(Icons.location_on, 0),
                  _buildmenu(Icons.add_location, 1),
                  _buildmenu(Icons.person_outlined, 2),
                ],
              )
            ],
          )),
    );
  }

  IconButton _buildmenu(IconData menu, int index) {
    return IconButton(
        onPressed: () {
          setState(() {
            this.select = index;
          });
        },
        icon: Icon(
          menu,
          size: 40,
          color: this.select == index ? Colors.red : Colors.white,
        ));
  }
}
