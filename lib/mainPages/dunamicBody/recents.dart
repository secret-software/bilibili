import 'package:flutter/material.dart';
import 'package:flutter_application_1/iconFont.dart';

class Recents extends StatefulWidget {
  const Recents({super.key});

  @override
  State<Recents> createState() => _RecentsState();
}

class _RecentsState extends State<Recents> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Text(
                "最近访问",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Text(
                "查看更多>",
                style: TextStyle(
                    fontSize: 12, color: Color.fromARGB(255, 136, 136, 136)),
              ),
            ),
          ],
        ),
        Container(
          height: 110,
          width: MediaQuery.of(context).size.width - 20,
          child: ListView.builder(
            itemCount: 10,
            primary: false,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                padding: EdgeInsets.only(bottom: 10),
                margin: EdgeInsets.only(right: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://i0.hdslb.com/bfs/face/42eb05e354476c2b22b5c512c4a484d93650020c.jpg@36w_36h_1c.webp"),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        child: Text("Mr.Quin"),
                      )
                    ]),
              );
            },
          ),
        )
      ]),
    );
  }
}

class gambit extends StatefulWidget {
  const gambit({super.key});

  @override
  State<gambit> createState() => _gambitState();
}

class _gambitState extends State<gambit> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      // padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    "热门话题",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  child: Text(
                    "查看更多>",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 136, 136, 136)),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width ,
            child: ListView.builder(
              itemCount: 5,
              primary: false,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  child: Column(children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: Row(
                        children: [
                          Icon(
                            iconFont.gambit,
                            color: Color.fromARGB(255, 28, 117, 211),
                            size: 12,
                          ),
                          Text(
                            "美国变性网红被捕入狱关入男子监狱",
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: Row(
                        children: [
                          Icon(
                            iconFont.gambit,
                            color: Color.fromARGB(255, 28, 117, 211),
                            size: 12,
                          ),
                          Text(
                            "美国变性网红被捕入狱关入男子监狱",
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: Row(
                        children: [
                          Icon(
                            iconFont.gambit,
                            color: Color.fromARGB(255, 28, 117, 211),
                            size: 12,
                          ),
                          Text(
                            "美国变性网红被捕入狱关入男子监狱",
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                    )
                  ]),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
