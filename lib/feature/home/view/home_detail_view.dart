import 'package:architecture_template/product/init/language/locale_keys.g.dart';
import 'package:architecture_template/product/state/settings/settings_bloc.dart';
import 'package:architecture_template/product/utility/constants/enums/theme.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'mixin/home_detail_mixin.dart';

@RoutePage()
final class HomeDetailView extends StatefulWidget {
  const HomeDetailView({required this.id, super.key});
  final int id;

  @override
  State<HomeDetailView> createState() => _HomeDetailViewState();
}

class _HomeDetailViewState extends State<HomeDetailView> with _HomeDetailMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomeDetailPage"),
      ),
      body: ListView(
        children: [
          Container(
            child: OutlinedButton(
              onPressed: _changeThemeFun,
              child: const Text(LocaleKeys.general_dialog_version_title).tr(),
            ),
          ),
        ],
      ),
    );
  }
}
