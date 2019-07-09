import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() {
    return _HomePageState();
  }

}
class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    List _imageUrls= [
      "https://pics0.baidu.com/feed/a1ec08fa513d2697d4579c05bf92a8fe4216d855.jpeg?token=a04a4f7a55f4aa12649faa6bb243ff1a&s=463436C14C6A2F26018DC5430100C0B2",
      "https://pics1.baidu.com/feed/03087bf40ad162d9140ac5e1851ab0e98813cdb6.jpeg?token=a85042fda49b15a2211ca1b1ba9dfb3e&s=6C9213D74E33588A8C1974F603008022",
      "https://pics0.baidu.com/feed/810a19d8bc3eb13502e6f8474f77b2d6fc1f4493.jpeg?token=75a79788c1c739acfff5fc328f483e58&s=1EE6C404F8AF964766BB150C030080C2",
    ];
    return Scaffold(
      body:Stack(
        children: <Widget>[
          MediaQuery.removePadding(context: context,
            removeTop: true,
            child: NotificationListener(
                onNotification: (notification){
                  //后面监听缔0个
                  if(notification is ScrollUpdateNotification && notification.depth==0){
                    _onScroll(notification.metrics.pixels);
                  }
                },
                child: ListView(
                  children: <Widget>[
                    Container(
                      height: 160,
                      child: Swiper(itemCount: _imageUrls.length,
                        autoplay: true,
                        itemBuilder: (BuildContext context,int index){
                          return new Image.network(_imageUrls[index],fit: BoxFit.fill,);
                        },
                        pagination: SwiperPagination(),
                      ),
                    )
                  ],
                )
            ),
          ),
          Opacity(
            opacity: 1,
            child: Container(
              height: 80,
              child: Text("首页"),
            ) ,
          ),

        ],
      )
    );
  }

  void _onScroll(double pixels) {

  }

}

