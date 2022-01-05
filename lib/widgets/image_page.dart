import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:location_pageview_app/widgets/view_widget/person_view_page.dart';

class ImagePage extends StatefulWidget {
  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  List img = [
    'https://images.unsplash.com/photo-1556474688-479399d655d1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YW1lcmljYW4lMjBjaXR5fGVufDB8fDB8fA%3D%3D&w=1000&q=80',
    'https://cdn.pixabay.com/photo/2015/03/11/12/31/buildings-668616__480.jpg',
    'https://thumbs.dreamstime.com/b/st-louis-united-states-america-14026911.jpg',
    'https://media.istockphoto.com/photos/taj-mahal-mausoleum-in-agra-picture-id1146517111?k=20&m=1146517111&s=612x612&w=0&h=vHWfu6TE0R5rG6DJkV42Jxr49aEsLN0ML-ihvtim8kk='
  ];
  List text = ['LANDSCAPE', 'RUSSIA', 'AMERICA', 'INDIA'];
  var pageController = PageController(viewportFraction: .9);
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: pageController,
        itemCount: text.length,
        itemBuilder: (context, index) {
          return Stack(alignment: Alignment.center, children: [
            AnimatedPositioned(
              curve: Curves.easeInOut,
              top: isExpanded ? 70 : 0,
              duration: Duration(milliseconds: 400),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(10),
                height: 400,
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    Text(
                      'LE Creetena-Montrose,CA91020',
                      style: TextStyle(fontSize: 20),
                    ),
                    Row(
                      children: [
                        Text(
                          'NO.791187',
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        ),
                        Spacer(),
                        RatingBar.builder(
                          itemSize: 20,
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
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PersonView(img[index])));
                      },
                      child: Row(
                        children: [
                          Image.network(
                            'https://cdn1.iconfinder.com/data/icons/user-pictures/100/female1-512.png',
                            scale: 20,
                          ),
                          Image.network(
                            'https://www.pngall.com/wp-content/uploads/12/Avatar-Transparent.png',
                            scale: 20,
                          ),
                          Image.network(
                            'https://planw.in/wp-content/uploads/2021/02/avatar-4.png',
                            scale: 20,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            AnimatedPositioned(
              top: isExpanded ? 10 : 0,
              duration: Duration(milliseconds: 400),
              child: GestureDetector(
                onTap: () {
                  isExpanded ? isExpanded = false : isExpanded = true;
                  setState(() {});
                },
                child: AnimatedContainer(
                  clipBehavior: Clip.antiAlias,
                  duration: Duration(milliseconds: 400),
                  height: isExpanded ? 380 : 400,
                  width: isExpanded ? 280 : 300,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Hero(
                    tag: img[index],
                    child: Image.network(
                      img[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ]);
        });
  }
}
