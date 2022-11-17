import 'package:flutter/material.dart';
import 'package:flutter_application_1/iconFont.dart';

import 'mainPages/Personage.dart';
import 'mainPages/dunamicBody/dynamic.dart';
import 'mainPages/homeBody/home.dart';
import 'mainPages/upload.dart';
import 'mainPages/vipShop.dart';

void main() {
  runApp(indexApp());
}

class indexApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'bilibili',
      home: HomeNavigationPage(4),
      // theme: ThemeData(primarySwatch: Colors.pink),
      // home: ,
    );
  }
}

// ignore: must_be_immutable
class HomeNavigationPage extends StatefulWidget {
  HomeNavigationPage(this.currentIndex);
  int currentIndex;
  @override
  State<StatefulWidget> createState() => _HomeNavigationPageState();
}

class _HomeNavigationPageState extends State<HomeNavigationPage> {
  final screens = [
    HomePage(),
    DynamicPage(),
    SizedBox(),
    VIPShopPage(),
    PersonagePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: widget.currentIndex,
          children: screens,
        ),
        floatingActionButton: Container(
          child: Icon(Icons.add,color: Colors.white,),
          width: 35,
          height: 35,   
          margin: EdgeInsets.only(top: 55),
          decoration: BoxDecoration(
            color: Color(0xFFFF4C7F),
            borderRadius: BorderRadius.all(Radius.circular(12)),
            
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
          
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.black87,
          selectedItemColor: Color(0xFFFF4C7F),
          currentIndex: widget.currentIndex,
          onTap: (index) => setState(() {
            widget.currentIndex = index;
          }),
          items:[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
            BottomNavigationBarItem(
                icon: Icon(iconFont.windmill), label: "动态"),
                BottomNavigationBarItem(icon: Icon(null), label: ""),
            BottomNavigationBarItem(
                icon: Icon(iconFont.shop), label: "会员购"),
            BottomNavigationBarItem(icon: Icon(iconFont.bili), label: "我的"),
          ],
        ));
  }
}
