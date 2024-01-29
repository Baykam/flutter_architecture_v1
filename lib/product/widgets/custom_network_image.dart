import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';

///Network image with [Lottie] loading
class ProjectNetworkImage extends StatelessWidget {
  const ProjectNetworkImage({super.key, this.url});

  final String? url;
  @override
  Widget build(BuildContext context) {
    return CustomNetworkImage(
      imageUrl: url,
      loadingWidget: Assets.lottie.animeZombi.lottie(package: 'gen'),
    );
  }
}
