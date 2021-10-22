/*
 * @Author: indeex
 * @Date: 2021-10-19 20:57:51
 * @Email: indeex@qq.com
 */
import 'package:flutter/material.dart';
import 'package:flutter_base/model/product.dart';

class ProductDetialPage extends StatelessWidget {
  final ProductItemModal item;
  ProductDetialPage({Key? key, required this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name ?? ''),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            item.imageUrl ?? '',
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(item.desc ?? ''),
          )
        ],
      ),
    );
  }
}
