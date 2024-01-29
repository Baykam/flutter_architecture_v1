import 'package:architecture_template/product/init/config/app_environment.dart';
import 'package:architecture_template/product/init/language/locale_keys.g.dart';
import 'package:architecture_template/product/init/product_localization.dart';
import 'package:architecture_template/product/navigation/app_router.gr.dart';
import 'package:architecture_template/product/utility/constants/enums/locales.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';

@RoutePage()
final class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool _changeLanguage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Assets.lottie.animeZombi.lottie(
              package: 'gen',
            ),
            Assets.icons.icCamel.svg(package: 'gen'),
            ElevatedButton(
                onPressed: () {}, child: Text(AppEnvironment.apiKey)),
            const Text(LocaleKeys.general_dialog_version_title).tr(),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _changeLanguage = !_changeLanguage;
                  ProductLocalization.updateLanguage(
                    context: context,
                    value: _changeLanguage ? Locales.en : Locales.tr,
                  );
                });
              },
              child: const Text(LocaleKeys.general_button_save).tr(),
            ),
            OutlinedButton(
              onPressed: () => context.router.push(HomeDetailRoute(id: 1)),
              child: const Text('go next page'),
            )
          ],
        ),
      ),
    );
  }
}
