/*
 * @Author: indeex
 * @Date: 2021-10-19 20:58:06
 * @Email: indeex@qq.com
 */
import 'package:flutter/material.dart';
import 'package:flutter_base/model/product.dart';
import 'package:flutter_base/pages/product_detail_page.dart';
import 'package:flutter_base/style/index.dart';

class ProductResultListPage extends StatelessWidget {
  final ProductListModal list;
  final VoidCallback? getNextPage;
  ProductResultListPage(this.list, {this.getNextPage});

  @override
  Widget build(BuildContext context) {
    return list.data.length == 0
        ? Center(
            child: CircularProgressIndicator(),
          )
        : ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 10),
            itemCount: list.data.length,
            itemBuilder: (BuildContext contenxt, int i) {
              ProductItemModal item = list.data[i];
              if ((i + 4) == list.data.length) {
                (getNextPage as dynamic)();
              }
              // return ListTile(
              //   title: Text(item.desc ?? ""),
              // );
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProductDetialPage(item: item)));
                },
                child: Container(
                  color: ProductColors.bgColor,
                  padding: EdgeInsets.only(top: 5, right: 5.0),
                  child: Row(
                    children: [
                      Image.asset(
                        item.imageUrl ?? '',
                        width: 120.0,
                        height: 120.0,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                            width: 1,
                            color: ProductColors.divideLineColor,
                          )),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.desc ?? '',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  item.type ?? '',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: ProductColors.typeColor),
                                ),
                                item.point == null
                                    ? SizedBox()
                                    : Container(
                                        child: Text(
                                          item.point ?? '',
                                          style: TextStyle(
                                              color: ProductColors.pointColor),
                                        ),
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 3),
                                        margin: EdgeInsets.only(left: 4),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 1,
                                              color: ProductColors.pointColor),
                                        ),
                                      ),
                              ],
                            ),
                            Text(
                              item.name ?? '',
                              style: ProductFonts.itemNameStyle,
                            ),
                          ],
                        ),
                      )),
                    ],
                  ),
                ),
              );
            });
  }
}
