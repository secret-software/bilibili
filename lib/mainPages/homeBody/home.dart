import 'package:flutter/material.dart';
import 'package:flutter_application_1/iconFont.dart';
import 'package:flutter_application_1/mainPages/homeBody/biliCard.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'slideShow.dart';
import 'biliCard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController home_tabController;
  @override
  void initState() {
    super.initState(); //length为导航栏的个数
    home_tabController = new TabController(vsync: this, length: 6);
    home_tabController.addListener(() {
      print(home_tabController.index); //打印点击的索引
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFF4C7F),
        actions: [
          UnconstrainedBox(
            child: Container(
              width: 30,
              height: 30,
              // margin: EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage("images/hedaer1X.png"),
                      fit: BoxFit.cover)),
            ),
          ),
          UnconstrainedBox(
            child: Container(
              margin: EdgeInsets.fromLTRB(15, 0, 20, 0),
              height: 30,
              width: 270,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(117, 117, 117, 0.12),
                  borderRadius: BorderRadius.circular(20)),
              child: TextField(
                // autofocus: true,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  // helperText: "冬之花",
                  prefixIcon: Icon(
                    iconFont.select,
                    color: Color(0xE2FFFFFF),
                    size: 20,
                  ),
                  hintStyle: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1), fontSize: 15),
                  border: InputBorder.none,
                  contentPadding:
                      EdgeInsets.only(left: 100, top: 40, right: 100),
                ),
              ),
            ),
          ),
          Container(
            child: Icon(
              iconFont.envelope,
              color: Color(0xddffffff),
            ),
            margin: EdgeInsets.only(right: 20),
            decoration: BoxDecoration(),
          )
        ],
        bottom: TabBar(
            
            indicatorColor: Color(0xFFFF4C7F), //指示器的颜色
            labelColor: Color.fromARGB(255, 255, 255, 255), //选中文字颜色
            unselectedLabelColor: Color.fromARGB(255, 255, 255, 255), //为选中文字颜色
            controller: home_tabController,
            tabs: [
              Tab(
                height: 30,
                text: "推荐",
              ),
              Tab(
                height: 30,
                text: "直播",
              ),
              Tab(
                height: 30,
                text: "热门",
              ),
              Tab(
                height: 30,
                text: "追番",
              ),
              Tab(
                height: 30,
                text: "影视",
              ),
              Tab(
                height: 30,
                text: "新征程",
              ),
            ]),
      ),
      body: ListView(
        children: [HomePageBody()],
      ),
    );
  }
}

class HomePageBody extends StatefulWidget {
  State<HomePageBody> createState() => _HomePageBody();
}

class _HomePageBody extends State<HomePageBody> {
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width),
      child: Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(color: Color.fromARGB(80, 236, 236, 236)),
          child: Column(children: [
            SlideShow(),
            GridView.count(
              physics: new NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: _InitGridViewData(BiLiCard()),
            ),
          ])),
    );
  }
}

List<Widget> _InitGridViewData(w) {
  List<Widget> bilics = [];
  for (var i = 0; i < 10; i++) {
    bilics.add(w);
  }
  return bilics;
}
