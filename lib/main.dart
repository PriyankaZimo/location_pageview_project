import 'package:flutter/material.dart';
import 'package:location_pageview_app/page/home_page.dart';
import 'package:location_pageview_app/widgets/location_page.dart';
import 'package:location_pageview_app/widgets/view_widget/person_view_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: HomePage());
  }
}
