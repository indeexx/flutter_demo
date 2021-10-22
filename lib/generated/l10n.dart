// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `hello indeex`
  String get title {
    return Intl.message(
      'hello indeex',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `welcom {name}`
  String welcom(Object name) {
    return Intl.message(
      'welcom $name',
      name: 'welcom',
      desc: '',
      args: [name],
    );
  }

  /// `{lala}{lala}lala,{lalala}{lalala}lalala`
  String hi(Object lala, Object lalala) {
    return Intl.message(
      '$lala${lala}lala,$lalala${lalala}lalala',
      name: 'hi',
      desc: '',
      args: [lala, lalala],
    );
  }

  // skipped getter for the 'msgTips' key

  /// `introduce`
  String get companyInfoTitle {
    return Intl.message(
      'introduce',
      name: 'companyInfoTitle',
      desc: '',
      args: [],
    );
  }

  /// `indeex's demo`
  String get appName {
    return Intl.message(
      'indeex`s demo',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get tabHome {
    return Intl.message(
      'Home',
      name: 'tabHome',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get settingLanguage {
    return Intl.message(
      'Language',
      name: 'settingLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Auto`
  String get autoBySystem {
    return Intl.message(
      'Auto',
      name: 'autoBySystem',
      desc: '',
      args: [],
    );
  }

  /// `Theme Mode`
  String get themeMode {
    return Intl.message(
      'Theme Mode',
      name: 'themeMode',
      desc: '',
      args: [],
    );
  }

  /// `Dark Mode`
  String get darkMode {
    return Intl.message(
      'Dark Mode',
      name: 'darkMode',
      desc: '',
      args: [],
    );
  }

  /// `Light Mode`
  String get lightMode {
    return Intl.message(
      'Light Mode',
      name: 'lightMode',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get menu1 {
    return Intl.message(
      'Home',
      name: 'menu1',
      desc: '',
      args: [],
    );
  }

  /// `Product`
  String get menu2 {
    return Intl.message(
      'Product',
      name: 'menu2',
      desc: '',
      args: [],
    );
  }

  /// `News`
  String get menu3 {
    return Intl.message(
      'News',
      name: 'menu3',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get menu4 {
    return Intl.message(
      'About',
      name: 'menu4',
      desc: '',
      args: [],
    );
  }

  /// `New Procuct`
  String get newProcuct {
    return Intl.message(
      'New Procuct',
      name: 'newProcuct',
      desc: '',
      args: [],
    );
  }

  /// `pleace input content`
  String get contactTip {
    return Intl.message(
      'pleace input content',
      name: 'contactTip',
      desc: '',
      args: [],
    );
  }

  /// `success`
  String get contactSuccess {
    return Intl.message(
      'success',
      name: 'contactSuccess',
      desc: '',
      args: [],
    );
  }

  /// `actact us`
  String get aboutContact {
    return Intl.message(
      'actact us',
      name: 'aboutContact',
      desc: '',
      args: [],
    );
  }

  /// `pleace input`
  String get aboutInput {
    return Intl.message(
      'pleace input',
      name: 'aboutInput',
      desc: '',
      args: [],
    );
  }

  /// `pleace input to us`
  String get toAboutInput {
    return Intl.message(
      'pleace input to us',
      name: 'toAboutInput',
      desc: '',
      args: [],
    );
  }

  /// `Company Introduce`
  String get aboutUs {
    return Intl.message(
      'Company Introduce',
      name: 'aboutUs',
      desc: '',
      args: [],
    );
  }

  /// `Company Advantage`
  String get aboutAdvantage {
    return Intl.message(
      'Company Advantage',
      name: 'aboutAdvantage',
      desc: '',
      args: [],
    );
  }

  /// `Company Contact`
  String get aboutContactUs {
    return Intl.message(
      'Company Contact',
      name: 'aboutContactUs',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'zh'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
