import 'package:architecture_template/product/utility/constants/enums/locales.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

@immutable

///Product locale manager
final class ProductLocalization extends EasyLocalization {
  ///Product localization need [child] for wrap locale item
  ProductLocalization({required super.child, super.key})
      : super(
          supportedLocales: supportedLocaleItems,
          path: localePath,
          useOnlyLangCode: true,
        );

  ///Project Supported Locales
  static final List<Locale> supportedLocaleItems = [
    Locales.tr.locale,
    Locales.en.locale,
    Locales.ru.locale,
  ];

  ///Project locale path
  static const localePath = 'asset/translations';

  ///Change project language by using [Locales]
  static Future<void> updateLanguage({
    required BuildContext context,
    required Locales value,
  }) =>
      context.setLocale(value.locale);
}
