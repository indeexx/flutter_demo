/*
 * @Author: indeex
 * @Date: 2021-10-19 22:41:34
 * @Email: indeex@qq.com
 */
import 'package:flutter_base/config/configure.dart';
import 'package:http/http.dart' as http;

getContactResult(String msg) async {
  String url = 'http://' +
      Config.IP +
      ":" +
      Config.PORT +
      "/?action=conactCompay&msg=$msg";

  var res = await http.get(Uri.parse(url));
  String body = res.body;

  var info = body;
  print(info);
  return info;
}
