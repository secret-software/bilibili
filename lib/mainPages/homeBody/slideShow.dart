import 'package:flutter/material.dart';
import 'package:flutter_application_1/iconFont.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SlideShow extends StatefulWidget {
  @override
  State<SlideShow> createState() => _SlidaShow();
}

class _SlidaShow extends State<SlideShow> {
  List<Image> iams = [Image.network(
        "https://i0.hdslb.com/bfs/banner/912029152061b0925fe020c31883770b6c418621.jpg",
        fit: BoxFit.fill,
      ),
      Image.network(
        "https://i0.hdslb.com/bfs/sycp/creative_img/202211/7d08b823954c988c0b9d3557d0d44fda.jpg@880w_388h.webp",
        fit: BoxFit.fill,
      ),
      Image.network(
        "https://i0.hdslb.com/bfs/banner/af514e972f1ec3626a09cb8ba4a7ebcbe7e9a5b0.jpg@880w_388h.webp",
        fit: BoxFit.fill,
      )];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 10,
      height: 200,
      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
      child: Swiper(
        itemBuilder: (BuildContext context,int index) {
          return iams[index];
        },
        itemCount: iams.length,
        pagination: new SwiperPagination(
            alignment: Alignment.bottomRight,
            builder: DotSwiperPaginationBuilder(
              color: Colors.black54,
              activeColor: Colors.white,
            )),
        // control: new SwiperControl(),
        scrollDirection: Axis.horizontal,
        autoplay: true,
        onTap: (index) => print('点击了第$index个'),
      ),
    );
  }
}

