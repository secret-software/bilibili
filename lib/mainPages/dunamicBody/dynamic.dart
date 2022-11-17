import 'package:flutter/material.dart';
import 'package:flutter_application_1/iconFont.dart';
import 'package:flutter_application_1/mainPages/dunamicBody/dynamicBar.dart';
import 'package:flutter_application_1/mainPages/dunamicBody/recents.dart';

class DynamicPage extends StatefulWidget {
  const DynamicPage({super.key});

  @override
  State<DynamicPage> createState() => _DynamicStatePage();
}

@override
class _DynamicStatePage extends State<DynamicPage>
    with SingleTickerProviderStateMixin {
  late TabController dynamic_tabController;
  @override
  void initState() {
    super.initState(); //length为导航栏的个数
    dynamic_tabController = new TabController(vsync: this, length: 2);
    dynamic_tabController.addListener(() {
      print(dynamic_tabController.index); //打印点击的索引
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFF4C7F),
        title: Center(
          child: Container(
            width: 140,
            margin: EdgeInsets.only(left: 20),
            child: TabBar(
              indicatorColor: Color.fromARGB(255, 255, 255, 255), //指示器的颜色
              labelColor: Color.fromARGB(255, 255, 255, 255), //选中文字颜色
              unselectedLabelColor: Color.fromARGB(88, 255, 255, 255), //为选中文字颜色
              controller: dynamic_tabController,

              tabs: <Widget>[
                Tab(
                  height: 30,
                  text: "综合",
                ),
                Tab(
                  height: 30,
                  text: "校园",
                )
              ],
              // controller: ,
            ),
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: Icon(iconFont.fill, color: Colors.white),
          )
        ],
      ),
      body: TabBarView(controller: dynamic_tabController, children: <Widget>[
        ListView(
          children: [DynamicBody()],
        ),
        Container(
          child: Text("敬请期待"),
        )
      ]),
    );
  }
}

class DynamicBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DynamicBody();
}

class _DynamicBody extends State<DynamicBody> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width),
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        decoration: BoxDecoration(color: Color.fromARGB(80, 236, 236, 236)),
        child: Column(children: [
          Container(
            color: Colors.white,
            height: 30,
            padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
            // decoration: BoxDecoration(),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "全部",
                      style: TextStyle(fontSize: 12),
                    ),
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                            EdgeInsets.fromLTRB(5, 2.5, 5, 2.5)),
                        foregroundColor:
                            MaterialStateProperty.all(Color(0xFFFF4C7F)),
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(219, 241, 241, 241))),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "未观看",
                      style: TextStyle(fontSize: 12),
                    ),
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                            EdgeInsets.fromLTRB(5, 2.5, 5, 2.5)),
                        foregroundColor: MaterialStateProperty.all(
                            Color.fromARGB(65, 0, 0, 0)),
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(219, 241, 241, 241))),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "继续观看",
                      style: TextStyle(fontSize: 12),
                    ),
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                            EdgeInsets.fromLTRB(5, 2.5, 5, 2.5)),
                        foregroundColor: MaterialStateProperty.all(
                            Color.fromARGB(65, 0, 0, 0)),
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(219, 241, 241, 241))),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "视频",
                      style: TextStyle(fontSize: 12),
                    ),
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                            EdgeInsets.fromLTRB(5, 2.5, 5, 2.5)),
                        foregroundColor: MaterialStateProperty.all(
                            Color.fromARGB(65, 0, 0, 0)),
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(219, 241, 241, 241))),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "直播",
                      style: TextStyle(fontSize: 12),
                    ),
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                            EdgeInsets.fromLTRB(5, 3, 5, 3)),
                        foregroundColor: MaterialStateProperty.all(
                            Color.fromARGB(65, 0, 0, 0)),
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(219, 241, 241, 241))),
                  ),
                ]),
          ),
          Recents(),
          gambit(),
          ListView.builder(
            itemCount: 10,
            primary: false,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return DynamicBar();
            },
          ),
        ]),
      ),
    );
  }
}
