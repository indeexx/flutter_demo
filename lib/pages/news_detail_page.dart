/*
 * @Author: indeex
 * @Date: 2021-10-19 20:57:51
 * @Email: indeex@qq.com
 */
import 'package:flutter/material.dart';
import 'package:flutter_base/model/news.dart';

class NewsDetialPage extends StatelessWidget {
  final NewsItemModal item;
  NewsDetialPage({Key? key, required this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.title ?? ''),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(item.content ?? ''),
          )
        ],
      ),
    );
  }
}
