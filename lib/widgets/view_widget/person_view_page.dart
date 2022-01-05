import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:like_button/like_button.dart';

class PersonView extends StatefulWidget {
  String img;

  PersonView(this.img);

  @override
  _PersonViewState createState() => _PersonViewState(img);
}

class _PersonViewState extends State<PersonView> {
  String img;

  _PersonViewState(this.img);

  List image = [
    'https://cdn1.iconfinder.com/data/icons/user-pictures/100/female1-512.png',
    'https://www.pngall.com/wp-content/uploads/12/Avatar-Transparent.png',
    'https://planw.in/wp-content/uploads/2021/02/avatar-4.png',
    'https://i.dlpng.com/static/png/7314511_preview.png'
  ];
  List text = ['Alia', 'Mark Desouza', 'Reeta Sharma', 'Vikas Kumar'];
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf2f2f5),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                child: Hero(
                  tag: img,
                  child: Image.network(
                    img,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                top: 50,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 30,
                    )),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'LE Creetena-Montrose,CA91020',
            style: TextStyle(fontSize: 25),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'NO.791187',
            style: TextStyle(color: Colors.grey, fontSize: 23),
          ),
          SizedBox(
            height: 10,
          ),
          RatingBar.builder(
            itemSize: 28,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 4,
            itemPadding: EdgeInsets.symmetric(horizontal: 0),
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.red,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
          Container(
            height: 420,
            decoration: BoxDecoration(color: Colors.white),
            child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) => Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.network(
                                image[index],
                                scale: 10,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                text[index],
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              LikeButton(

                                isLiked: isLiked = true,
                              )
                            ],
                          ),
                          Text(
                            'The Person Information screen is the place to record and maintain basic information about people in your database like their name, address, phone number, date of birth, gender, identification number, email address, photograph and so on. A person can be anyone etc. ',
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    )),
          ),
        ],
      ),
    );
  }
}
