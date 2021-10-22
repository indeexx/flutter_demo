/*
 * @Author: indeex
 * @Date: 2021-10-19 16:19:46
 * @Email: indeex@qq.com
 */
import 'package:flutter/material.dart';

class LanguageProviderTest extends ChangeNotifier {
  String _language1 = "";
  String _language2 = "";
  String get language => _language1 + ',' + _language2;

  // LanguageProviderTest() {
  //   _language = '';
  // }
  // LanguageProviderTest(this._language);

  Locale get locale {
    if (_language1 != '') {
      return Locale(_language1, _language2);
    }
    return Locale('en', 'US');
  }

  toggleLanguage(String lang1, String lang2) {
    _language1 = lang1;
    _language2 = lang2;
    notifyListeners();
  }
}
