import 'package:flutter/material.dart';
import 'package:flutter_application_1/iconFont.dart';

class PersonagePage extends StatefulWidget {
  const PersonagePage({super.key});

  @override
  State<PersonagePage> createState() => PpersonageStatePage();
}

class PpersonageStatePage extends State<PersonagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFFF4C7F),
        actions: [
          Container(
            width: MediaQuery.of(context).size.width / 2.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(iconFont.bili),
                Icon(iconFont.scan),
                Icon(iconFont.cloth),
                Icon(iconFont.moon)
              ],
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          PerSonBody(),
        ],
      ),
    );
  }
}

class PerSonBody extends StatefulWidget {
  const PerSonBody({super.key});

  @override
  State<PerSonBody> createState() => _PerSonBodyState();
}

class _PerSonBodyState extends State<PerSonBody> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width),
      child: Container(
        decoration: BoxDecoration(color: Color.fromARGB(80, 236, 236, 236)),
        child: Column(
          children: [
            Container(
              height: 200,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color(0xFFFF4C7F),
                Color(0xFFFF4C7F),
                Color(0xFFFF4C7F),
                Colors.white
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                                image: AssetImage("images/hedaer1X.png"),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        height: 70,
                        padding: EdgeInsets.only(right: 120),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 120,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "姬秋月",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                  Icon(
                                    iconFont.fill,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 11,
                                        color: Color.fromARGB(255, 204, 3, 3),
                                        child: Text(
                                          "LV",
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Container(
                                        height: 14,
                                        color: Color.fromARGB(255, 204, 3, 3),
                                        child: Text("6+",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold)),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 16,
                              padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      color: Color.fromARGB(128, 255, 255, 255),
                                      width: 1)),
                              child: Text("年度大会员",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontWeight: FontWeight.w900)),
                            ),
                            Row(
                              children: [
                                Container(
                                  child: Text("b币: 0.0",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromARGB(
                                              134, 255, 255, 255),
                                          fontWeight: FontWeight.bold)),
                                ),
                                Container(
                                  child: Text("硬币: 483",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromARGB(
                                              134, 255, 255, 255),
                                          fontWeight: FontWeight.bold)),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Text("空间 >",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(134, 255, 255, 255),
                                fontWeight: FontWeight.bold)),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 100,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Text(
                                  "163",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                                Text("动态",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color:
                                            Color.fromARGB(134, 255, 255, 255),
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Text(
                                  "60",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                                Text("关注",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color:
                                            Color.fromARGB(134, 255, 255, 255),
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Text(
                                  "1200",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                                Text("粉丝",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color:
                                            Color.fromARGB(134, 255, 255, 255),
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                        ]),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
