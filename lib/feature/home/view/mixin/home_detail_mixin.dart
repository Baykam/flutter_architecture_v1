part of '../home_detail_view.dart';

mixin _HomeDetailMixin on State<HomeDetailView> {
  bool _changeTheme = false;

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
