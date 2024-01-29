import 'package:architecture_template/product/widgets/custom_network_image.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
final class HomeDetailView extends StatelessWidget {
  const HomeDetailView({super.key, required this.id});
  final int id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomeDetailPage"),
      ),
      body: ListView(
        children: [
          ProjectNetworkImage(
            url: "",
          )
        ],
      ),
    );
  }
}
