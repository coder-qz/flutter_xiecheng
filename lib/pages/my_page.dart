import 'package:flutter/material.dart';

class MyPage extends StatefulWidget{
  @override
  _MyPageState createState() {
    return _MyPageState();
  }

}
class _MyPageState extends State<MyPage>{
  final PageController pageController = new PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("我的")
    );
  }

}