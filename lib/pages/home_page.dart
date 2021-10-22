/*
 * @Author: indeex
 * @Date: 2021-10-19 20:57:51
 * @Email: indeex@qq.com
 */
import 'package:flutter/material.dart';
import 'package:flutter_base/model/product.dart';
import 'package:flutter_base/pages/home_page_banner.dart';
import 'package:flutter_base/pages/home_product_page.dart';
import 'package:flutter_base/services/product.dart';

class HomePage extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<HomePage> {
  ProductListModal listData = ProductListModal([]);

  void getProductList() async {
    var data = await getProductResult();
    ProductListModal list = ProductListModal.fromJson(data);

    setState(() {
      listData.data.addAll(list.data);
    });
  }

  @override
  void initState() {
    getProductList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          BannerWidget(),
          HomeProductPage(listData),
          // RaisedButton(
          //   child: Text('测试获取数据'),
          //   onPressed: () {
          //     getProductResult();
          //   },
          // ),
        ],
      ),
    );
  }
}
