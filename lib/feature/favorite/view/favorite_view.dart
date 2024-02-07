import 'package:architecture_template/product/state/settings/settings_bloc.dart';
import 'package:architecture_template/product/utility/constants/enums/images.dart';
import 'package:architecture_template/product/utility/constants/enums/locales.dart';
import 'package:architecture_template/product/widgets/custom_network_image.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ProjectNetworkImage(
            url: ImageEnum.google.url,
          ),
        ],
      ),
    );
  }
}
