import 'package:flutter/material.dart';
import 'package:xiecheng_app/pages/home_page.dart';
import 'package:xiecheng_app/pages/my_page.dart';
import 'package:xiecheng_app/pages/search_page.dart';
import 'package:xiecheng_app/pages/travel_page.dart';

class TabNavigator extends StatefulWidget{
  @override
  _TabNavigatorState createState() {
    return _TabNavigatorState();
  }

}
class _TabNavigatorState extends State<TabNavigator>{
  final _defaultColor = Colors.grey;
  final _activeColor = Colors.blue;
  int _currentIndex = 0;
  final PageController _pageController = new PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller:_pageController ,
        children: <Widget>[
          HomePage(),
          SearchPage(),
          TravelPage(),
          MyPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index){
            _pageController.jumpToPage(index);
            setState(() {
              _currentIndex = index;
            });
          },
          type:BottomNavigationBarType.fixed ,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: _defaultColor,
                ),
                activeIcon:  Icon(
                  Icons.home,
                  color: _activeColor,
                ),
                 title:Text(
                   "首页",
                   style: TextStyle(
                     color: _currentIndex!=0 ?_defaultColor:_activeColor
                   ),
                 )
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: _defaultColor,
                ),
                activeIcon:  Icon(
                  Icons.search,
                  color: _activeColor,
                ),
                title:Text(
                  "搜索",
                  style: TextStyle(
                      color: _currentIndex!=1 ?_defaultColor:_activeColor
                  ),
                )
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.camera,
                  color: _defaultColor,
                ),
                activeIcon:  Icon(
                  Icons.camera,
                  color: _activeColor,
                ),
                title:Text(
                  "旅拍",
                  style: TextStyle(
                      color: _currentIndex!=2 ?_defaultColor:_activeColor
                  ),
                )
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle,
                  color: _defaultColor,
                ),
                activeIcon:  Icon(
                  Icons.account_circle,
                  color: _activeColor,
                ),
                title:Text(
                  "我的",
                  style: TextStyle(
                      color: _currentIndex!=3 ?_defaultColor:_activeColor
                  ),
                )
            ),
          ]
      ),
    );
  }

}