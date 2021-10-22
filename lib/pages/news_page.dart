/*
 * @Author: indeex
 * @Date: 2021-10-19 20:57:58
 * @Email: indeex@qq.com
 */
/*
 * @Author: indeex
 * @Date: 2021-10-19 20:58:06
 * @Email: indeex@qq.com
 */
import 'package:flutter/material.dart';
import 'package:flutter_base/model/news.dart';
import 'package:flutter_base/pages/news_detail_page.dart';
import 'package:flutter_base/services/news.dart';

class NewsPage extends StatefulWidget {
  @override
  NewsState createState() => NewsState();
}

class NewsState extends State<NewsPage> {
  NewsListModal listData = NewsListModal([]);
  int page = 0;

  void getNewsList() async {
    var data = await getNewsResult(page++);
    NewsListModal list = NewsListModal.fromJson(data);

    setState(() {
      listData.data.addAll(list.data);
    });
  }

  @override
  void initState() {
    getNewsList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) {
            NewsItemModal item = listData.data[index];

            return ListTile(
              title: Text(item.title ?? ''),
              subtitle: Text(item.content ?? ''),
              leading: Icon(Icons.fiber_new),
              trailing: Icon(Icons.arrow_forward),
              contentPadding: EdgeInsets.all(10.0),
              enabled: true,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NewsDetialPage(item: item)));
              },
            );
          },
          separatorBuilder: (BuildContext context, int index) => Divider(
                height: 1.0,
                color: Colors.grey,
              ),
          itemCount: listData.data.length),
    );
  }
}
