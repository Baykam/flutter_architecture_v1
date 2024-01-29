import 'package:architecture_template/product/utility/constants/enums/images.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:widgets/widgets.dart';

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
          AdaptAllView(
            phone: Text("data"),
            tablet: Text("data"),
            desktop: Text("data"),
          ),
          Expanded(
            child: Image.network(ImageUrls.google.url),
          ),
        ],
      ),
    );
  }
}
