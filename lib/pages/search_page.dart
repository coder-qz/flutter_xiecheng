import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget{
  @override
  _SearchPageState createState() {
    return _SearchPageState();
  }

}
class _SearchPageState extends State<SearchPage>{
  final PageController pageController = new PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 80,
        decoration: BoxDecoration(color: Colors.blue),
        child: Center(
          child: Padding(padding: EdgeInsets.only(top:20),
            child: Text("搜索",
            style: TextStyle(color: Colors.white)
          ),
          ),
        ),
      )
    );
  }

}