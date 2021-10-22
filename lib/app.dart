/*
 * @Author: indeex
 * @Date: 2021-10-13 20:10:00
 * @Email: indeex@qq.com
 */
import 'package:flutter/material.dart';
import 'package:flutter_base/generated/l10n.dart';
import 'package:flutter_base/pages/about_us_page.dart';
import 'package:flutter_base/pages/home_page.dart';
import 'package:flutter_base/pages/news_page.dart';
import 'package:flutter_base/pages/product_page.dart';
import 'package:flutter_base/provider/language_provider_test.dart';
import 'package:provider/provider.dart';

class App extends StatefulWidget {
  @override
  AppState createState() => AppState();
}

class AppState extends State<App> {
  var _currentIndex = 0;

  HomePage? homePage;
  ProductPage? productPage;
  NewsPage? newsPage;
  AboutPage? aboutPage;

  currentPage() {
    switch (_currentIndex) {
      case 0:
        if (homePage == null) homePage = HomePage();
        return HomePage();
      case 1:
        if (productPage == null) productPage = ProductPage();
        return ProductPage();
      case 2:
        if (newsPage == null) newsPage = NewsPage();
        return NewsPage();
      case 3:
        if (aboutPage == null) aboutPage = AboutPage();
        return AboutPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Indeex`s Demo'),
        leading:
            Icon(Icons.home), //在标题前面显示的一个控件，在首页通常显示应用的 logo；在其他界面通常显示为返回按钮。
        actions: <Widget>[
          //一个 Widget 列表，代表 Toolbar 中所显示的菜单，对于常用的菜单，通常使用 IconButton 来表示；对于不常用的菜单通常使用 PopupMenuButton 来显示为三个点，点击后弹出二级菜单。
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {},
              child: Icon(Icons.search),
            ),
          ),
        ],
      ),
      body: currentPage(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: ((index) {
          setState(() {
            _currentIndex = index;
          });
        }),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: S.of(context).menu1),
          BottomNavigationBarItem(
              icon: Icon(Icons.apps), label: S.of(context).menu2),
          BottomNavigationBarItem(
              icon: Icon(Icons.fiber_new), label: S.of(context).menu3),
          BottomNavigationBarItem(
              icon: Icon(Icons.insert_comment), label: S.of(context).menu4),

          // BottomNavigationBarItem(
          //     icon: Icon(Icons.home),
          //     title: Text(
          //       '首页',
          //       style: TextStyle(
          //           color: _currentIndex == 0
          //               ? Colors.blueAccent
          //               : Color(0xff999999)),
          //     )),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.home),
          //     title: Text(
          //       '首页',
          //       style: TextStyle(
          //           color: _currentIndex == 1
          //               ? Colors.blueAccent
          //               : Color(0xff999999)),
          //     )),
        ],
      ),
    );
  }
}
