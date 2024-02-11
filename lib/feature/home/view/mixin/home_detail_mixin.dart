part of '../home_detail_view.dart';

mixin _HomeDetailMixin on State<HomeDetailView> {
  bool _changeTheme = false;

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

  void _changeThemeFun() {
    setState(() {
      _changeTheme = !_changeTheme;
    });
    context.read<SettingsBloc>().add(
          ChangeTheme(
              _changeTheme ? ThemeChangeEnum.dark : ThemeChangeEnum.light),
        );
  }
}
