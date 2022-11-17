import 'package:flutter/material.dart';
import 'package:flutter_application_1/iconFont.dart';

class BiLiCard extends StatefulWidget {
  @override
  State<BiLiCard> createState() => _BiLiCard();
}

class _BiLiCard extends State<BiLiCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2 - 10,
      height: 200,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(color: Colors.black54, offset: Offset(0.5, 0.5), blurRadius: 1),
          ]),
      child: Column(
        children: [
          Stack(
            fit: StackFit.loose,
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                child: Image.network(
                    "https://i0.hdslb.com/bfs/archive/40694fdc125f67831824a6dab5d414baf3f8644d.png@498w_664h.webp",
                    fit: BoxFit.cover),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 2 - 10,
                height: 60,
                padding: EdgeInsets.fromLTRB(5, 0, 5, 5),
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(0, 255, 255, 255),
                      Color.fromARGB(40, 79, 79, 79),
                      // Color.fromARGB(133, 79, 79, 79),
                      Color.fromARGB(207, 58, 58, 58)
                    ],
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                        alignment: Alignment.bottomCenter,
                        width: 65,
                        child: Row(
                          children: [
                            Icon(
                              iconFont.playsum,
                              size: 12,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "82.7万",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            )
                          ],
                        )),
                    Container(
                        alignment: Alignment.bottomCenter,
                        width: 60,
                        child: Row(
                          children: [
                            Icon(
                              iconFont.barrage,
                              size: 10,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("1145",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10))
                          ],
                        )),
                    Container(
                      alignment: Alignment.bottomRight,
                      width: MediaQuery.of(context).size.width / 2 - 145,
                      child: Text("5:14",
                          style: TextStyle(color: Colors.white, fontSize: 10)),
                    )
                  ],
                ),
              )
            ],
          ),
          Container(
            height: 50,
            alignment: Alignment.topLeft,
            padding: EdgeInsets.all(10),
            child: Text(
              "放开我！心脏要逃走了！",
              style: TextStyle(fontSize: 12),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 5, left: 10),
            child: Row(
              children: [
                Container(
                  width: 100,
                  child: Row(children: [
                    Icon(
                      iconFont.upmaster,
                      size: 12,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      "哔哩哔哩番剧",
                      style: TextStyle(fontSize: 10),
                    )
                  ]),
                ),
                SizedBox(
                  width: 55,
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    iconFont.move,
                    size: 10,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
