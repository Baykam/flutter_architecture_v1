part of '../home_view.dart';

mixin _HomeViewMixin on State<HomeView> {
  bool _changeLanguage = false;

  ///onPressed for change Language
  void _onPressedChangeLan() {
    setState(() {
      _changeLanguage = !_changeLanguage;
      ProductLocalization.updateLanguage(
        context: context,
        value: _changeLanguage ? Locales.en : Locales.tr,
      );
    });
  }
}
