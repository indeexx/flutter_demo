/*
 * @Author: indeex
 * @Date: 2021-10-19 20:57:51
 * @Email: indeex@qq.com
 */
import 'package:flutter/material.dart';
import 'package:flutter_base/generated/l10n.dart';
import 'package:flutter_base/model/product.dart';
import 'package:flutter_base/pages/home_page_banner.dart';
import 'package:flutter_base/pages/product_detail_page.dart';
import 'package:flutter_base/services/product.dart';
import 'package:flutter_base/utils/utils.dart';

class HomeProductPage extends StatelessWidget {
  final ProductListModal list;
  HomeProductPage(this.list);
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: 10, bottom: 10, left: 7.5),
      child: _build(context, deviceWidth),
    );
  }

  Widget _build(BuildContext context, double deviceWidth) {
    double itemWidth = deviceWidth * 168.5 / 360;
    double imageWidth = deviceWidth * 110.0 / 360;

    List<Widget> listWidgets = list.data.map((i) {
      var bgColor = string2Color('#f8f8f8');
      Color titleColor = string2Color('#db5d41');
      Color SubtitleColor = string2Color('#999999');
      return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ProductDetialPage(item: i)));
        },
        child: Container(
          width: itemWidth,
          margin: EdgeInsets.only(bottom: 5, left: 2),
          padding: EdgeInsets.only(top: 10, left: 13, bottom: 7),
          color: Colors.grey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                i.name ?? '',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              Text(
                i.desc ?? '',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              Container(
                alignment: Alignment(0, 0),
                margin: EdgeInsets.only(top: 5),
                child: Image.asset(
                  i.imageUrl ?? '',
                  width: imageWidth,
                  height: imageWidth,
                ),
              ),
            ],
          ),
        ),
      );
    }).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 5, bottom: 10),
          child: Text(
            S.of(context).newProcuct,
            style:
                TextStyle(fontSize: 16.0, color: Color.fromRGBO(51, 51, 51, 1)),
          ),
        ),
        Wrap(
          spacing: 2,
          children: listWidgets,
        ),
      ],
    );
  }
}
