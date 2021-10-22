/*
 * @Author: indeex
 * @Date: 2021-10-19 20:57:41
 * @Email: indeex@qq.com
 */
import 'package:flutter/material.dart';
import 'package:flutter_base/generated/l10n.dart';
import 'package:flutter_base/pages/contact_us_page%20copy.dart';

class AboutPage extends StatefulWidget {
  @override
  AboutState createState() => AboutState();
}

class AboutState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/company.png',
              fit: BoxFit.cover,
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text(S.of(context).aboutUs),
              onTap: () {
                Navigator.of(context)
                    .restorablePushReplacementNamed('company_info');
              },
            ),
            Divider(
              height: 10.0,
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text(S.of(context).aboutAdvantage),
            ),
            Divider(
              height: 10.0,
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text(S.of(context).aboutContactUs),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ContactPage()));
              },
            ),
            Divider(
              height: 10.0,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
