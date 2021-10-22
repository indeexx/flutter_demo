/*
 * @Author: indeex
 * @Date: 2021-10-19 20:57:51
 * @Email: indeex@qq.com
 */
import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

class BannerWidget extends StatelessWidget {
  List<String> banners = <String>[
    'assets/banners/2@2x.png',
    'assets/banners/3@2x.png',
    'assets/banners/4@2x.png',
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = width * 540.0 / 1080.0; //手机常规分辨率，适配大部分机型
    return Container(
      width: width,
      height: height,
      child: Swiper(
        itemBuilder: (BuildContext context, index) {
          return Container(
            margin: EdgeInsets.only(left: 5, right: 5),
            child: Image.asset(
              banners[index],
              width: width,
              height: height,
              fit: BoxFit.cover,
            ),
          );
        },
        itemCount: banners.length,
        scrollDirection: Axis.horizontal,
        autoplay: true,
      ),
    );
  }
}
