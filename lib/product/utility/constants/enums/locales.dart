import 'package:flutter/material.dart';

/// Project supported locales enum
enum Locales {
  ///Turkish locale
  tr(Locale('tr', 'TR')),

  ///English locale
  en(Locale('en', 'US')),

  ///Russian locale
  ru(Locale('ru', 'RU'));

  ///Locale value
  final Locale locale;

  // ignore: sort_constructors_first
  const Locales(this.locale);
}
