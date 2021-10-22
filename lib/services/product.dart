/*
 * @Author: indeex
 * @Date: 2021-10-19 22:41:21
 * @Email: indeex@qq.com
 */
import 'dart:convert';

import 'package:flutter_base/config/configure.dart';
import 'package:http/http.dart' as http;

getProductResult([int page = 0]) async {
  String url = 'http://' +
      Config.IP +
      ":" +
      Config.PORT +
      "/?action=getProducts&page=$page";

  var res = await http.get(Uri.parse(url));
  String body = res.body;

  var json = jsonDecode(body);
  print(json);
  return json['items'] as List;
}
