/*
 * @Author: indeex
 * @Date: 2021-10-15 18:50:53
 * @Email: indeex@qq.com
 */
import 'package:flutter/material.dart';

class Counter extends ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}
