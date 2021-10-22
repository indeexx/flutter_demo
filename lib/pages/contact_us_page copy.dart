/*
 * @Author: indeex
 * @Date: 2021-10-19 20:57:41
 * @Email: indeex@qq.com
 */
import 'package:flutter/material.dart';
import 'package:flutter_base/generated/l10n.dart';
import 'package:flutter_base/services/contact.dart';

class ContactPage extends StatefulWidget {
  @override
  ContactState createState() => ContactState();
}

class ContactState extends State<ContactPage> {
  TextEditingController controller = TextEditingController();
  void commit() {
    if (controller.text.length == 0) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text(S.of(context).contactTip),
              ));
    } else {
      var info = getContactResult(controller.text);
      // print('服务器返回：$info');
      controller.text = "";
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text(S.of(context).contactSuccess),
              ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).aboutContact),
      ),
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
            SizedBox(
              height: 40.0,
            ),
            SizedBox(
              width: 300,
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  hintText: S.of(context).aboutInput,
                  labelText: S.of(context).aboutInput,
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            SizedBox(
              width: 220,
              height: 48,
              child: RaisedButton(
                child: Text(
                  S.of(context).toAboutInput,
                  style: TextStyle(fontSize: 16.0),
                ),
                color: Colors.redAccent,
                colorBrightness: Brightness.dark,
                padding:
                    EdgeInsets.only(left: 20, top: 5, right: 20, bottom: 5),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1.0,
                    color: Colors.white,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),
                onPressed: () {
                  commit();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
