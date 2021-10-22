/*
 * @Author: indeex
 * @Date: 2021-10-19 20:58:06
 * @Email: indeex@qq.com
 */
import 'package:flutter/material.dart';
import 'package:flutter_base/model/product.dart';
import 'package:flutter_base/pages/product_list_page.dart';
import 'package:flutter_base/services/product.dart';

class ProductPage extends StatefulWidget {
  @override
  ProductState createState() => ProductState();
}

class ProductState extends State<ProductPage> {
  ProductListModal listData = ProductListModal([]);
  int page = 0;

  void getProductList() async {
    var data = await getProductResult(page++);
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
    return ProductResultListPage(
      listData,
      getNextPage: () => getProductList(),
    );
  }
}
