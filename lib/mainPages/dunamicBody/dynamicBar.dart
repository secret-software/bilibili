import 'package:flutter/material.dart';
import 'package:flutter_application_1/iconFont.dart';

class DynamicBar extends StatefulWidget {
  const DynamicBar({super.key});

  @override
  State<DynamicBar> createState() => _DynamicBarState();
}

class _DynamicBarState extends State<DynamicBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      margin: EdgeInsets.only(top: 10),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://i0.hdslb.com/bfs/face/42eb05e354476c2b22b5c512c4a484d93650020c.jpg@36w_36h_1c.webp"),
                          fit: BoxFit.cover)),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    textBaseline: TextBaseline.ideographic,
                    children: [
                      Text(
                        "Mr.Quin",
                        style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFFFF4C7F),
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                        "1小时前",
                        style:
                            TextStyle(fontSize: 10, color: Color(0xff888888)),
                      ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Icon(iconFont.move)
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 10, bottom: 10),
          alignment: Alignment.centerLeft,
          child: Text(
            "今天摸了",
            style: TextStyle(fontSize: 16),
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Row(
            children: [
              Icon(
                iconFont.comment,
                size: 12,
              ),
              SizedBox(
                width: 5,
              ),
              Wrap(
                children: [
                  Text(
                    "秦川德里奇：",
                    style: TextStyle(color: Color(0xff888888), fontSize: 14),
                  ),
                  Text(
                    "主播的黑暗剑22什么时候发啊?",
                    style: TextStyle(color: Color(0xff888888), fontSize: 14),
                  )
                ],
              )
            ],
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Row(children: [
                  Icon(
                    iconFont.transmit,
                    size: 14,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "1.2万",
                    style: TextStyle(fontSize: 12),
                  )
                ]),
              ),
              Container(
                child: Row(children: [
                  Icon(iconFont.comment, size: 14),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "2243",
                    style: TextStyle(fontSize: 12),
                  )
                ]),
              ),
              Container(
                child: Row(children: [
                  Icon(iconFont.givelike, size: 14),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "1.7万",
                    style: TextStyle(fontSize: 12),
                  )
                ]),
              )
            ],
          ),
        )
      ]),
    );
  }
}
