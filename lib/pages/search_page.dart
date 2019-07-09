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
      body: Text("搜索")
    );
  }

}