import 'package:flutter/material.dart';

class TravelPage extends StatefulWidget{
  @override
  _TravelPageState createState() {
    return _TravelPageState();
  }

}
class _TravelPageState extends State<TravelPage>{
  final PageController pageController = new PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("旅拍")
    );
  }

}